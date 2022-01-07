
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_space {int * session_tbl; int session_buf; int * context_tbl; int context_buf; } ;
struct tpm_chip {struct tpm_space work_space; } ;


 int ARRAY_SIZE (int *) ;
 int ENOENT ;
 int PAGE_SIZE ;
 int tpm2_flush_context (struct tpm_chip*,int ) ;
 int tpm2_flush_space (struct tpm_chip*) ;
 int tpm2_save_context (struct tpm_chip*,int ,int ,int ,unsigned int*) ;

__attribute__((used)) static int tpm2_save_space(struct tpm_chip *chip)
{
 struct tpm_space *space = &chip->work_space;
 unsigned int offset;
 int i;
 int rc;

 for (i = 0, offset = 0; i < ARRAY_SIZE(space->context_tbl); i++) {
  if (!(space->context_tbl[i] && ~space->context_tbl[i]))
   continue;

  rc = tpm2_save_context(chip, space->context_tbl[i],
           space->context_buf, PAGE_SIZE,
           &offset);
  if (rc == -ENOENT) {
   space->context_tbl[i] = 0;
   continue;
  } else if (rc)
   return rc;

  tpm2_flush_context(chip, space->context_tbl[i]);
  space->context_tbl[i] = ~0;
 }

 for (i = 0, offset = 0; i < ARRAY_SIZE(space->session_tbl); i++) {
  if (!space->session_tbl[i])
   continue;

  rc = tpm2_save_context(chip, space->session_tbl[i],
           space->session_buf, PAGE_SIZE,
           &offset);

  if (rc == -ENOENT) {

   space->session_tbl[i] = 0;
  } else if (rc < 0) {
   tpm2_flush_space(chip);
   return rc;
  }
 }

 return 0;
}
