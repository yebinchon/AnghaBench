
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ list_agents; scalar_t__ append_protocol; scalar_t__ append_method; } ;
struct TYPE_10__ {scalar_t__ uniq_nkey; int data_nkey; int root_nkey; int root; int data; } ;
struct TYPE_9__ {int agent_nkey; int protocol; int method; int serve_time; int resp_size; } ;
struct TYPE_8__ {int (* agent ) (int ,int ,int ) ;int (* protocol ) (int ,int ,int ) ;int (* method ) (int ,int ,int ) ;int (* maxts ) (int ,int ,int ) ;int (* cumts ) (int ,int ,int ) ;int (* bw ) (int ,int ,int ) ;int (* visitor ) (int ,int ) ;int (* hits ) (int ,int ) ;int (* rootmap ) (int ,int ,int ) ;int (* datamap ) (int ,int ,int ) ;int module; } ;
typedef TYPE_1__ GParse ;
typedef int GModule ;
typedef TYPE_2__ GLogItem ;
typedef TYPE_3__ GKeyData ;


 TYPE_7__ conf ;
 int insert_root (int ,int ,int ) ;
 int stub1 (int ,int ,int ) ;
 int stub10 (int ,int ,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ,int ) ;
 int stub6 (int ,int ,int ) ;
 int stub7 (int ,int ,int ) ;
 int stub8 (int ,int ,int ) ;
 int stub9 (int ,int ,int ) ;

__attribute__((used)) static void
set_datamap (GLogItem * logitem, GKeyData * kdata, const GParse * parse)
{
  GModule module;
  module = parse->module;


  parse->datamap (kdata->data_nkey, kdata->data, module);


  if (parse->rootmap) {
    parse->rootmap (kdata->root_nkey, kdata->root, module);
    insert_root (kdata->data_nkey, kdata->root_nkey, module);
  }

  if (parse->hits)
    parse->hits (kdata->data_nkey, module);

  if (parse->visitor && kdata->uniq_nkey != 0)
    parse->visitor (kdata->data_nkey, module);

  if (parse->bw)
    parse->bw (kdata->data_nkey, logitem->resp_size, module);

  if (parse->cumts)
    parse->cumts (kdata->data_nkey, logitem->serve_time, module);

  if (parse->maxts)
    parse->maxts (kdata->data_nkey, logitem->serve_time, module);

  if (parse->method && conf.append_method)
    parse->method (kdata->data_nkey, logitem->method, module);

  if (parse->protocol && conf.append_protocol)
    parse->protocol (kdata->data_nkey, logitem->protocol, module);

  if (parse->agent && conf.list_agents)
    parse->agent (kdata->data_nkey, logitem->agent_nkey, module);
}
