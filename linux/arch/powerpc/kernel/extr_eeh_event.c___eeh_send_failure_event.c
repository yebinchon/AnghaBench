
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_pe {int stack_trace; int trace_entries; } ;
struct eeh_event {int list; struct eeh_pe* pe; } ;


 int ARRAY_SIZE (int ) ;
 int EEH_PE_RECOVERING ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int complete (int *) ;
 int eeh_eventlist ;
 int eeh_eventlist_event ;
 int eeh_eventlist_lock ;
 int eeh_pe_state_mark (struct eeh_pe*,int ) ;
 struct eeh_event* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pr_err (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stack_trace_save (int ,int ,int ) ;

int __eeh_send_failure_event(struct eeh_pe *pe)
{
 unsigned long flags;
 struct eeh_event *event;

 event = kzalloc(sizeof(*event), GFP_ATOMIC);
 if (!event) {
  pr_err("EEH: out of memory, event not handled\n");
  return -ENOMEM;
 }
 event->pe = pe;






 if (pe) {
  eeh_pe_state_mark(pe, EEH_PE_RECOVERING);
 }


 spin_lock_irqsave(&eeh_eventlist_lock, flags);
 list_add(&event->list, &eeh_eventlist);
 spin_unlock_irqrestore(&eeh_eventlist_lock, flags);


 complete(&eeh_eventlist_event);

 return 0;
}
