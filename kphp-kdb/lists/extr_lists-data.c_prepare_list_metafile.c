
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct metafile {int dummy; } ;
typedef int list_id_t ;
struct TYPE_5__ {int tot_lists; } ;
struct TYPE_4__ {int data; int next; int prev; scalar_t__ aio; } ;


 TYPE_3__ Header ;
 int assert (int) ;
 int get_list_metafile (int ) ;
 scalar_t__ get_metafile_offset (int) ;
 int load_metafile_aio (int,int) ;
 scalar_t__ memory_for_metafiles ;
 TYPE_1__** metafiles ;
 int tot_lost_aio_bytes ;
 scalar_t__ tot_metafiles_memory ;
 scalar_t__ unload_LRU () ;
 int update_use (int) ;
 int vkprintf (int,char*,...) ;
 TYPE_1__* zmalloc0 (int) ;

int prepare_list_metafile (list_id_t list_id, int use_aio) {
  vkprintf (4, "preparing metafile...\n");
  while (tot_metafiles_memory > memory_for_metafiles && unload_LRU ());


  int x = get_list_metafile (list_id);
  if (x < 0) {
    return 0;
  }
  assert (x < Header.tot_lists);
  vkprintf (4, "preparing metafile #%d of %d\n", x, Header.tot_lists);
  if (use_aio < 0 && metafiles[x] && metafiles[x]->aio) {
    assert (metafiles[x]->data);
    tot_lost_aio_bytes += get_metafile_offset (x + 1) - get_metafile_offset (x);
    vkprintf (0, "skipping pending aio query. Total lost memory %lld\n", tot_lost_aio_bytes);
    metafiles[x]->data = 0;
    metafiles[x]->aio = 0;
  }
  if (!metafiles[x]) {
    metafiles[x] = zmalloc0 (sizeof (struct metafile));
    metafiles[x]->next = -1;
    metafiles[x]->prev = -1;
  } else {
    if (!metafiles[x]->aio && metafiles[x]->data) {
      update_use (x);
      return 1;
    }
  }
  return load_metafile_aio (x, (use_aio > 0) || metafiles[x]->aio);
}
