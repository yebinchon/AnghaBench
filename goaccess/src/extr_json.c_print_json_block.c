
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int data; } ;
typedef TYPE_1__ GMetrics ;
typedef int GJSON ;


 int TAB ;
 int escape_json_output (int *,int ) ;
 int pavgts (int *,TYPE_1__*,int) ;
 int pbw (int *,TYPE_1__*,int) ;
 int pcumts (int *,TYPE_1__*,int) ;
 int phits (int *,TYPE_1__*,int) ;
 int pjson (int *,char*,...) ;
 int pmaxts (int *,TYPE_1__*,int) ;
 int pmethod (int *,TYPE_1__*,int) ;
 int pprotocol (int *,TYPE_1__*,int) ;
 int pvisitors (int *,TYPE_1__*,int) ;

__attribute__((used)) static void
print_json_block (GJSON * json, GMetrics * nmetrics, int sp)
{

  phits (json, nmetrics, sp);

  pvisitors (json, nmetrics, sp);

  pbw (json, nmetrics, sp);


  pavgts (json, nmetrics, sp);
  pcumts (json, nmetrics, sp);
  pmaxts (json, nmetrics, sp);


  pmethod (json, nmetrics, sp);
  pprotocol (json, nmetrics, sp);


  pjson (json, "%.*s\"data\": \"", sp, TAB);
  escape_json_output (json, nmetrics->data);
  pjson (json, "\"");
}
