
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpm_space {int session_buf; int context_buf; } ;
struct tpm_chip {int tpm_mutex; } ;


 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tpm2_flush_sessions (struct tpm_chip*,struct tpm_space*) ;
 int tpm_chip_start (struct tpm_chip*) ;
 int tpm_chip_stop (struct tpm_chip*) ;

void tpm2_del_space(struct tpm_chip *chip, struct tpm_space *space)
{
 mutex_lock(&chip->tpm_mutex);
 if (!tpm_chip_start(chip)) {
  tpm2_flush_sessions(chip, space);
  tpm_chip_stop(chip);
 }
 mutex_unlock(&chip->tpm_mutex);
 kfree(space->context_buf);
 kfree(space->session_buf);
}
