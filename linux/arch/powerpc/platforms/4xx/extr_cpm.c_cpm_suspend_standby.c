
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPRN_TCR ;
 unsigned long TCR_DIE ;
 int cpm_idle_sleep (unsigned int) ;
 unsigned long mfspr (int ) ;
 int mtspr (int ,unsigned long) ;

__attribute__((used)) static void cpm_suspend_standby(unsigned int mask)
{
 unsigned long tcr_save;


 tcr_save = mfspr(SPRN_TCR);
 mtspr(SPRN_TCR, tcr_save & ~TCR_DIE);


 cpm_idle_sleep(mask);


 mtspr(SPRN_TCR, tcr_save);
}
