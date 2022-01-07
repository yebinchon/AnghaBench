
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_9__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ json_pretty_print; } ;
struct TYPE_13__ {int size; TYPE_2__* items; } ;
struct TYPE_12__ {TYPE_1__* metrics; } ;
struct TYPE_11__ {int agent; } ;
struct TYPE_10__ {int data; } ;
typedef int GJSON ;
typedef TYPE_3__ GHolderItem ;
typedef TYPE_4__ GAgents ;


 int NL ;
 int TAB ;
 TYPE_9__ conf ;
 int escape_json_output (int *,int ) ;
 int free_agents_array (TYPE_4__*) ;
 int load_host_agents ;
 TYPE_4__* new_gagents () ;
 int nlines ;
 int pclose_arr (int *,int,int) ;
 int pjson (int *,char*,...) ;
 int set_host_agents (int ,int ,TYPE_4__*) ;

__attribute__((used)) static void
process_host_agents (GJSON * json, GHolderItem * item, int iisp)
{
  GAgents *agents = new_gagents ();
  int i, n = 0, iiisp = 0;


  if (conf.json_pretty_print)
    iiisp = iisp + 1;

  if (set_host_agents (item->metrics->data, load_host_agents, agents) == 1)
    return;

  pjson (json, ",%.*s%.*s\"items\": [%.*s", nlines, NL, iisp, TAB, nlines, NL);

  n = agents->size > 10 ? 10 : agents->size;
  for (i = 0; i < n; ++i) {
    pjson (json, "%.*s\"", iiisp, TAB);
    escape_json_output (json, agents->items[i].agent);
    if (i == n - 1)
      pjson (json, "\"");
    else
      pjson (json, "\",%.*s", nlines, NL);
  }

  pclose_arr (json, iisp, 1);


  free_agents_array (agents);
}
