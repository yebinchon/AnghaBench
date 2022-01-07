
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_STATUS ;
 int BCSR_STATUS_SD0WP ;
 int bcsr_read (int ) ;

__attribute__((used)) static int db1100_mmc_card_readonly(void *mmc_host)
{

 return (bcsr_read(BCSR_STATUS) & BCSR_STATUS_SD0WP) ? 0 : 1;
}
