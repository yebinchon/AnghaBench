
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sf_buffer {unsigned long* sdbt; int num_sdbt; unsigned long* tail; scalar_t__ num_sdb; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int debug_sprintf_event (int ,int,char*,...) ;
 int free_sampling_buffer (struct sf_buffer*) ;
 scalar_t__ get_zeroed_page (int ) ;
 int realloc_sampling_buffer (struct sf_buffer*,unsigned long,int ) ;
 int sfdbg ;

__attribute__((used)) static int alloc_sampling_buffer(struct sf_buffer *sfb, unsigned long num_sdb)
{
 int rc;

 if (sfb->sdbt)
  return -EINVAL;


 sfb->sdbt = (unsigned long *) get_zeroed_page(GFP_KERNEL);
 if (!sfb->sdbt)
  return -ENOMEM;
 sfb->num_sdb = 0;
 sfb->num_sdbt = 1;




 sfb->tail = sfb->sdbt;
 *sfb->tail = (unsigned long)(void *) sfb->sdbt + 1;


 rc = realloc_sampling_buffer(sfb, num_sdb, GFP_KERNEL);
 if (rc) {
  free_sampling_buffer(sfb);
  debug_sprintf_event(sfdbg, 4, "alloc_sampling_buffer: "
   "realloc_sampling_buffer failed with rc=%i\n", rc);
 } else
  debug_sprintf_event(sfdbg, 4,
   "alloc_sampling_buffer: tear=%p dear=%p\n",
   sfb->sdbt, (void *) *sfb->sdbt);
 return rc;
}
