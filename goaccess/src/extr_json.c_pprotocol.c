
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ append_protocol; } ;
struct TYPE_4__ {scalar_t__ protocol; } ;
typedef TYPE_1__ GMetrics ;
typedef int GJSON ;


 TYPE_3__ conf ;
 int pskeysval (int *,char*,scalar_t__,int,int ) ;

__attribute__((used)) static void
pprotocol (GJSON * json, GMetrics * nmetrics, int sp)
{

  if (conf.append_protocol && nmetrics->protocol) {
    pskeysval (json, "protocol", nmetrics->protocol, sp, 0);
  }
}
