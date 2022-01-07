
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_debug_entry {scalar_t__ added; struct event const* ptr; } ;
struct event {int dummy; } ;


 int EVLOCK_LOCK (int ,int ) ;
 int EVLOCK_UNLOCK (int ,int ) ;
 struct event_debug_entry* HT_FIND (int ,int *,struct event_debug_entry*) ;
 int HT_INSERT (int ,int *,struct event_debug_entry*) ;
 int event_debug_map ;
 int event_debug_map_lock_ ;
 int event_debug_mode_on_ ;
 int event_debug_mode_too_late ;
 int event_err (int,char*) ;
 int global_debug_map ;
 struct event_debug_entry* mm_malloc (int) ;

__attribute__((used)) static void event_debug_note_setup_(const struct event *ev)
{
 struct event_debug_entry *dent, find;

 if (!event_debug_mode_on_)
  goto out;

 find.ptr = ev;
 EVLOCK_LOCK(event_debug_map_lock_, 0);
 dent = HT_FIND(event_debug_map, &global_debug_map, &find);
 if (dent) {
  dent->added = 0;
 } else {
  dent = mm_malloc(sizeof(*dent));
  if (!dent)
   event_err(1,
       "Out of memory in debugging code");
  dent->ptr = ev;
  dent->added = 0;
  HT_INSERT(event_debug_map, &global_debug_map, dent);
 }
 EVLOCK_UNLOCK(event_debug_map_lock_, 0);

out:
 event_debug_mode_too_late = 1;
}
