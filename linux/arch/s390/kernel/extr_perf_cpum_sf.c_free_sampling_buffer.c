
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sf_buffer {unsigned long* sdbt; } ;


 int debug_sprintf_event (int ,int,char*,unsigned long*) ;
 int free_page (unsigned long) ;
 unsigned long* get_next_sdbt (unsigned long*) ;
 scalar_t__ is_link_entry (unsigned long*) ;
 int memset (struct sf_buffer*,int ,int) ;
 int sfdbg ;

__attribute__((used)) static void free_sampling_buffer(struct sf_buffer *sfb)
{
 unsigned long *sdbt, *curr;

 if (!sfb->sdbt)
  return;

 sdbt = sfb->sdbt;
 curr = sdbt;


 while (1) {
  if (!*curr || !sdbt)
   break;


  if (is_link_entry(curr)) {
   curr = get_next_sdbt(curr);
   if (sdbt)
    free_page((unsigned long) sdbt);


   if (curr == sfb->sdbt)
    break;
   else
    sdbt = curr;
  } else {

   if (*curr) {
    free_page(*curr);
    curr++;
   }
  }
 }

 debug_sprintf_event(sfdbg, 5,
       "free_sampling_buffer: freed sdbt=%p\n", sfb->sdbt);
 memset(sfb, 0, sizeof(*sfb));
}
