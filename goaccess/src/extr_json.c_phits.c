
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ json_pretty_print; } ;
struct TYPE_4__ {int hits_perc; int hits; } ;
typedef TYPE_1__ GMetrics ;
typedef int GJSON ;


 TYPE_3__ conf ;
 int pclose_obj (int *,int,int ) ;
 int popen_obj_attr (int *,char*,int) ;
 int pskeyfval (int *,char*,int ,int,int) ;
 int pskeyival (int *,char*,int ,int,int ) ;

__attribute__((used)) static void
phits (GJSON * json, GMetrics * nmetrics, int sp)
{
  int isp = 0;


  if (conf.json_pretty_print)
    isp = sp + 1;

  popen_obj_attr (json, "hits", sp);

  pskeyival (json, "count", nmetrics->hits, isp, 0);

  pskeyfval (json, "percent", nmetrics->hits_perc, isp, 1);
  pclose_obj (json, sp, 0);
}
