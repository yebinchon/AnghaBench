
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_BOARD ;
 int BCSR_BOARD_SD1PWR ;
 int bcsr_mod (int ,int ,int ) ;
 int msleep (int) ;

__attribute__((used)) static void pb1200_mmc1_set_power(void *mmc_host, int state)
{
 if (state) {
  bcsr_mod(BCSR_BOARD, 0, BCSR_BOARD_SD1PWR);
  msleep(400);
 } else
  bcsr_mod(BCSR_BOARD, BCSR_BOARD_SD1PWR, 0);
}
