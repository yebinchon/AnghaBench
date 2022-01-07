
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sthyi_sctns {int dummy; } ;


 int GFP_KERNEL ;
 scalar_t__ __get_free_page (int ) ;
 int fill_stsi_mac (struct sthyi_sctns*,void*) ;
 int fill_stsi_par (struct sthyi_sctns*,void*) ;
 int free_pages (unsigned long,int ) ;

__attribute__((used)) static void fill_stsi(struct sthyi_sctns *sctns)
{
 void *sysinfo;


 sysinfo = (void *)__get_free_page(GFP_KERNEL);
 if (!sysinfo)
  return;

 fill_stsi_mac(sctns, sysinfo);
 fill_stsi_par(sctns, sysinfo);

 free_pages((unsigned long)sysinfo, 0);
}
