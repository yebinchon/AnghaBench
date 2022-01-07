
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ json_pretty_print; } ;
typedef int GJSON ;


 TYPE_1__ conf ;
 int pclose_obj (int *,int,int) ;
 int popen_obj_attr (int *,char*,int) ;
 int pskeyu64val (int *,char*,int,int,int) ;

__attribute__((used)) static void
pmeta_data_unique (GJSON * json, int ht_size, int sp)
{
  int isp = 0;


  if (conf.json_pretty_print)
    isp = sp + 1;

  popen_obj_attr (json, "data", sp);
  pskeyu64val (json, "unique", ht_size, isp, 1);
  pclose_obj (json, sp, 1);
}
