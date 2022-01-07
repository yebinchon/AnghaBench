
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int bandwidth; scalar_t__ json_pretty_print; } ;
struct TYPE_5__ {int nbw; } ;
struct TYPE_6__ {int bw_perc; TYPE_1__ bw; } ;
typedef TYPE_2__ GMetrics ;
typedef int GJSON ;


 TYPE_4__ conf ;
 int pclose_obj (int *,int,int ) ;
 int popen_obj_attr (int *,char*,int) ;
 int pskeyfval (int *,char*,int ,int,int) ;
 int pskeyu64val (int *,char*,int ,int,int ) ;

__attribute__((used)) static void
pbw (GJSON * json, GMetrics * nmetrics, int sp)
{
  int isp = 0;


  if (conf.json_pretty_print)
    isp = sp + 1;

  if (!conf.bandwidth)
    return;

  popen_obj_attr (json, "bytes", sp);

  pskeyu64val (json, "count", nmetrics->bw.nbw, isp, 0);

  pskeyfval (json, "percent", nmetrics->bw_perc, isp, 1);
  pclose_obj (json, sp, 0);
}
