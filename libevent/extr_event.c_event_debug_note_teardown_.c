
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_debug_entry {struct event const* ptr; } ;
struct event {int dummy; } ;


 int EVLOCK_LOCK (int ,int ) ;
 int EVLOCK_UNLOCK (int ,int ) ;
 struct event_debug_entry* HT_REMOVE (int ,int *,struct event_debug_entry*) ;
 int event_debug_map ;
 int event_debug_map_lock_ ;
 int event_debug_mode_on_ ;
 int event_debug_mode_too_late ;
 int global_debug_map ;
 int mm_free (struct event_debug_entry*) ;

__attribute__((used)) static void event_debug_note_teardown_(const struct event *ev)
{
 struct event_debug_entry *dent, find;

 if (!event_debug_mode_on_)
  goto out;

 find.ptr = ev;
 EVLOCK_LOCK(event_debug_map_lock_, 0);
 dent = HT_REMOVE(event_debug_map, &global_debug_map, &find);
 if (dent)
  mm_free(dent);
 EVLOCK_UNLOCK(event_debug_map_lock_, 0);

out:
 event_debug_mode_too_late = 1;
}
