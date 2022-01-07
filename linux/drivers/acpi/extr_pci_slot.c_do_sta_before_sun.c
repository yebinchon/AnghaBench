
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int ident; } ;


 int check_sta_before_sun ;
 int pr_info (char*,int ) ;

__attribute__((used)) static int do_sta_before_sun(const struct dmi_system_id *d)
{
 pr_info("%s detected: will evaluate _STA before calling _SUN\n",
  d->ident);
 check_sta_before_sun = 1;
 return 0;
}
