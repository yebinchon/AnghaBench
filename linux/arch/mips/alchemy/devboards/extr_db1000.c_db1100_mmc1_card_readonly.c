
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_BOARD ;
 int BCSR_BOARD_SD1WP ;
 int bcsr_read (int ) ;

__attribute__((used)) static int db1100_mmc1_card_readonly(void *mmc_host)
{
 return (bcsr_read(BCSR_BOARD) & BCSR_BOARD_SD1WP) ? 1 : 0;
}
