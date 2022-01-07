
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tpm_chip {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* status ) (struct tpm_chip*) ;scalar_t__ (* req_canceled ) (struct tpm_chip*,int) ;} ;


 int stub1 (struct tpm_chip*) ;
 scalar_t__ stub2 (struct tpm_chip*,int) ;

__attribute__((used)) static bool wait_for_tpm_stat_cond(struct tpm_chip *chip, u8 mask,
    bool check_cancel, bool *canceled)
{
 u8 status = chip->ops->status(chip);

 *canceled = 0;
 if ((status & mask) == mask)
  return 1;
 if (check_cancel && chip->ops->req_canceled(chip, status)) {
  *canceled = 1;
  return 1;
 }
 return 0;
}
