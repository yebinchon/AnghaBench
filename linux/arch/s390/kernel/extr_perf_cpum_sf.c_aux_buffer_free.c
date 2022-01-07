
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long num_sdbt; } ;
struct aux_buffer {struct aux_buffer* sdb_index; struct aux_buffer* sdbt_index; TYPE_1__ sfb; } ;


 int debug_sprintf_event (int ,int,char*,unsigned long) ;
 int free_page (struct aux_buffer) ;
 int kfree (struct aux_buffer*) ;
 int sfdbg ;

__attribute__((used)) static void aux_buffer_free(void *data)
{
 struct aux_buffer *aux = data;
 unsigned long i, num_sdbt;

 if (!aux)
  return;


 num_sdbt = aux->sfb.num_sdbt;
 for (i = 0; i < num_sdbt; i++)
  free_page(aux->sdbt_index[i]);

 kfree(aux->sdbt_index);
 kfree(aux->sdb_index);
 kfree(aux);

 debug_sprintf_event(sfdbg, 4, "aux_buffer_free: free "
       "%lu SDBTs\n", num_sdbt);
}
