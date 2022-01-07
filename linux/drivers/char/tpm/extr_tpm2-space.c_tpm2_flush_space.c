
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_space {int * context_tbl; } ;
struct tpm_chip {struct tpm_space work_space; } ;


 int ARRAY_SIZE (int *) ;
 int tpm2_flush_context (struct tpm_chip*,int ) ;
 int tpm2_flush_sessions (struct tpm_chip*,struct tpm_space*) ;

void tpm2_flush_space(struct tpm_chip *chip)
{
 struct tpm_space *space = &chip->work_space;
 int i;

 for (i = 0; i < ARRAY_SIZE(space->context_tbl); i++)
  if (space->context_tbl[i] && ~space->context_tbl[i])
   tpm2_flush_context(chip, space->context_tbl[i]);

 tpm2_flush_sessions(chip, space);
}
