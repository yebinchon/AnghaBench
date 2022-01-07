
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_space {scalar_t__* session_tbl; } ;
struct tpm_chip {int dummy; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int tpm2_flush_context (struct tpm_chip*,scalar_t__) ;

__attribute__((used)) static void tpm2_flush_sessions(struct tpm_chip *chip, struct tpm_space *space)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(space->session_tbl); i++) {
  if (space->session_tbl[i])
   tpm2_flush_context(chip, space->session_tbl[i]);
 }
}
