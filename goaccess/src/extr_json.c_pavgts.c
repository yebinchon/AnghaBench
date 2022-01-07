
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int serve_usecs; } ;
struct TYPE_5__ {int nts; } ;
struct TYPE_6__ {TYPE_1__ avgts; } ;
typedef TYPE_2__ GMetrics ;
typedef int GJSON ;


 TYPE_4__ conf ;
 int pskeyu64val (int *,char*,int ,int,int ) ;

__attribute__((used)) static void
pavgts (GJSON * json, GMetrics * nmetrics, int sp)
{
  if (!conf.serve_usecs)
    return;
  pskeyu64val (json, "avgts", nmetrics->avgts.nts, sp, 0);
}
