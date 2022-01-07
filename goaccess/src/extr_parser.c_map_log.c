
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ data_key; scalar_t__ root_key; void* root_nkey; int uniq_nkey; void* data_nkey; } ;
struct TYPE_14__ {int uniq_nkey; scalar_t__ uniq_key; } ;
struct TYPE_13__ {int (* key_data ) (TYPE_3__*,TYPE_2__*) ;scalar_t__ datamap; scalar_t__ rootmap; scalar_t__ visitor; } ;
typedef TYPE_1__ GParse ;
typedef int GModule ;
typedef TYPE_2__ GLogItem ;
typedef TYPE_3__ GKeyData ;


 int free (char*) ;
 scalar_t__ include_uniq (TYPE_2__*) ;
 void* insert_keymap (scalar_t__,int ) ;
 int insert_uniqmap (char*,int ) ;
 char* intkeys2str (int ,void*) ;
 int new_modulekey (TYPE_3__*) ;
 int set_datamap (TYPE_2__*,TYPE_3__*,TYPE_1__ const*) ;
 int stub1 (TYPE_3__*,TYPE_2__*) ;

__attribute__((used)) static void
map_log (GLogItem * logitem, const GParse * parse, GModule module)
{
  GKeyData kdata;
  char *uniq_key = ((void*)0);

  new_modulekey (&kdata);
  if (parse->key_data (&kdata, logitem) == 1)
    return;


  if (parse->datamap && kdata.data_key)
    kdata.data_nkey = insert_keymap (kdata.data_key, module);


  if (parse->visitor && logitem->uniq_key && include_uniq (logitem)) {
    uniq_key = intkeys2str (logitem->uniq_nkey, kdata.data_nkey);

    kdata.uniq_nkey = insert_uniqmap (uniq_key, module);
    free (uniq_key);
  }


  if (parse->rootmap && kdata.root_key)
    kdata.root_nkey = insert_keymap (kdata.root_key, module);


  if (parse->datamap && kdata.data_key)
    set_datamap (logitem, &kdata, parse);
}
