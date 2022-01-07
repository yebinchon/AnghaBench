
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ json_pretty_print; } ;
typedef int GModule ;
typedef int GJSON ;


 TYPE_1__ conf ;
 int ht_get_meta_data (int ,char*) ;
 int ht_get_visitors_min_max (int ,int*,int*) ;
 int pclose_obj (int *,int,int ) ;
 int popen_obj_attr (int *,char*,int) ;
 int pskeyival (int *,char*,int,int,int) ;
 int pskeyu64val (int *,char*,int ,int,int ) ;

__attribute__((used)) static void
pmeta_data_visitors (GJSON * json, GModule module, int sp)
{
  int isp = 0;
  int max = 0, min = 0;

  ht_get_visitors_min_max (module, &min, &max);


  if (conf.json_pretty_print)
    isp = sp + 1;

  popen_obj_attr (json, "visitors", sp);
  pskeyu64val (json, "count", ht_get_meta_data (module, "visitors"), isp, 0);
  pskeyival (json, "max", max, isp, 0);
  pskeyival (json, "min", min, isp, 1);
  pclose_obj (json, sp, 0);
}
