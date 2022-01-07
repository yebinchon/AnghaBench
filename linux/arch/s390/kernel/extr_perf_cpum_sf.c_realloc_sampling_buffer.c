
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sf_buffer {scalar_t__ sdbt; unsigned long* tail; void* num_sdbt; void* num_sdb; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOMEM ;
 int alloc_sample_data_block (unsigned long*,int ) ;
 int debug_sprintf_event (int ,int,char*,void*,void*) ;
 scalar_t__ get_next_sdbt (unsigned long*) ;
 scalar_t__ get_zeroed_page (int ) ;
 int is_link_entry (unsigned long*) ;
 scalar_t__ require_table_link (unsigned long*) ;
 int sfdbg ;

__attribute__((used)) static int realloc_sampling_buffer(struct sf_buffer *sfb,
       unsigned long num_sdb, gfp_t gfp_flags)
{
 int i, rc;
 unsigned long *new, *tail;

 if (!sfb->sdbt || !sfb->tail)
  return -EINVAL;

 if (!is_link_entry(sfb->tail))
  return -EINVAL;






 tail = sfb->tail;




 if (sfb->sdbt != get_next_sdbt(tail)) {
  debug_sprintf_event(sfdbg, 3, "realloc_sampling_buffer: "
        "sampling buffer is not linked: origin=%p"
        "tail=%p\n",
        (void *) sfb->sdbt, (void *) tail);
  return -EINVAL;
 }


 rc = 0;
 for (i = 0; i < num_sdb; i++) {

  if (require_table_link(tail)) {
   new = (unsigned long *) get_zeroed_page(gfp_flags);
   if (!new) {
    rc = -ENOMEM;
    break;
   }
   sfb->num_sdbt++;

   *tail = (unsigned long)(void *) new + 1;
   tail = new;
  }






  rc = alloc_sample_data_block(tail, gfp_flags);
  if (rc)
   break;
  sfb->num_sdb++;
  tail++;
 }


 *tail = (unsigned long) sfb->sdbt + 1;
 sfb->tail = tail;

 debug_sprintf_event(sfdbg, 4, "realloc_sampling_buffer: new buffer"
       " settings: sdbt=%lu sdb=%lu\n",
       sfb->num_sdbt, sfb->num_sdb);
 return rc;
}
