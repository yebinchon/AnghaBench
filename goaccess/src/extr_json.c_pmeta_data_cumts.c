
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ json_pretty_print; int serve_usecs; } ;
typedef int GModule ;
typedef int GJSON ;


 TYPE_1__ conf ;
 int ht_get_cumts_min_max (int ,int *,int *) ;
 int ht_get_meta_data (int ,char*) ;
 int pclose_obj (int *,int,int ) ;
 int popen_obj_attr (int *,char*,int) ;
 int pskeyu64val (int *,char*,int ,int,int) ;

__attribute__((used)) static void
pmeta_data_cumts (GJSON * json, GModule module, int sp)
{
  int isp = 0;
  uint64_t max = 0, min = 0;

  if (!conf.serve_usecs)
    return;

  ht_get_cumts_min_max (module, &min, &max);


  if (conf.json_pretty_print)
    isp = sp + 1;

  popen_obj_attr (json, "cumts", sp);
  pskeyu64val (json, "count", ht_get_meta_data (module, "cumts"), isp, 0);
  pskeyu64val (json, "max", max, isp, 0);
  pskeyu64val (json, "min", min, isp, 1);
  pclose_obj (json, sp, 0);
}
