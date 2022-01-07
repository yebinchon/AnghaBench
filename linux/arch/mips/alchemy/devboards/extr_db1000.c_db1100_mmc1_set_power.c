
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_BOARD ;
 int BCSR_BOARD_PB1100_SD1PWR ;
 int BCSR_BOARD_SD1PWR ;
 int BCSR_WHOAMI ;
 scalar_t__ BCSR_WHOAMI_BOARD (int ) ;
 scalar_t__ BCSR_WHOAMI_DB1100 ;
 int bcsr_mod (int ,int,int) ;
 int bcsr_read (int ) ;
 int msleep (int) ;

__attribute__((used)) static void db1100_mmc1_set_power(void *mmc_host, int state)
{
 int bit;

 if (BCSR_WHOAMI_BOARD(bcsr_read(BCSR_WHOAMI)) == BCSR_WHOAMI_DB1100)
  bit = BCSR_BOARD_SD1PWR;
 else
  bit = BCSR_BOARD_PB1100_SD1PWR;

 if (state) {
  bcsr_mod(BCSR_BOARD, 0, bit);
  msleep(400);
 } else
  bcsr_mod(BCSR_BOARD, bit, 0);
}
