
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int SM; int ENDI; scalar_t__ ARS; scalar_t__ NDC; } ;
struct aes_t {TYPE_1__ controlr; } ;


 scalar_t__ AES_START ;

void aes_chip_init (void)
{
    volatile struct aes_t *aes = (struct aes_t *) AES_START;


    aes->controlr.SM = 1;
    aes->controlr.NDC = 0;
    asm("sync");
    aes->controlr.ENDI = 1;
    asm("sync");
    aes->controlr.ARS = 0;

}
