
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_INT_SD0INSERT ;
 int BCSR_SIGSTAT ;
 int bcsr_read (int ) ;

__attribute__((used)) static int db1200_mmc_card_inserted(void *mmc_host)
{
 return (bcsr_read(BCSR_SIGSTAT) & BCSR_INT_SD0INSERT) ? 1 : 0;
}
