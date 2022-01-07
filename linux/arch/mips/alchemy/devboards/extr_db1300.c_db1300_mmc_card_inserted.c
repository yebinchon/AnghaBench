
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_SIGSTAT ;
 int bcsr_read (int ) ;

__attribute__((used)) static int db1300_mmc_card_inserted(void *mmc_host)
{
 return bcsr_read(BCSR_SIGSTAT) & (1 << 12);
}
