
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* visitors; void* hits; void* bw; } ;
typedef TYPE_1__ GPercTotals ;
typedef int GModule ;


 void* ht_get_meta_data (int ,char*) ;

void
set_module_totals (GModule module, GPercTotals * totals)
{
  totals->bw = ht_get_meta_data (module, "bytes");
  totals->hits = ht_get_meta_data (module, "hits");
  totals->visitors = ht_get_meta_data (module, "visitors");
}
