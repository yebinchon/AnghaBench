
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int event_free_debug_globals_locks () ;

__attribute__((used)) static void
event_free_debug_globals(void)
{
 event_free_debug_globals_locks();
}
