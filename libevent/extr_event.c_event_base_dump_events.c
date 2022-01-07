
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_base {int dummy; } ;
typedef int FILE ;


 int EVBASE_ACQUIRE_LOCK (struct event_base*,int ) ;
 int EVBASE_RELEASE_LOCK (struct event_base*,int ) ;
 int dump_active_event_fn ;
 int dump_inserted_event_fn ;
 int event_base_foreach_event_nolock_ (struct event_base*,int ,int *) ;
 int fprintf (int *,char*) ;
 int th_base_lock ;

void
event_base_dump_events(struct event_base *base, FILE *output)
{
 EVBASE_ACQUIRE_LOCK(base, th_base_lock);
 fprintf(output, "Inserted events:\n");
 event_base_foreach_event_nolock_(base, dump_inserted_event_fn, output);

 fprintf(output, "Active events:\n");
 event_base_foreach_event_nolock_(base, dump_active_event_fn, output);
 EVBASE_RELEASE_LOCK(base, th_base_lock);
}
