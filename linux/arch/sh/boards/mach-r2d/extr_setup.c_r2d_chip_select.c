
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_spi_info {int dummy; } ;


 int BITBANG_CS_ACTIVE ;
 int BUG_ON (int) ;
 int PA_RTCCE ;
 int __raw_writew (int,int ) ;

__attribute__((used)) static void r2d_chip_select(struct sh_spi_info *spi, int cs, int state)
{
 BUG_ON(cs != 0);
 __raw_writew(state == BITBANG_CS_ACTIVE, PA_RTCCE);
}
