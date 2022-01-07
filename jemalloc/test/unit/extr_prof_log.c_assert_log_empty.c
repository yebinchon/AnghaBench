
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_zu_eq (int ,int ,char*) ;
 int prof_log_alloc_count () ;
 int prof_log_bt_count () ;
 int prof_log_thr_count () ;

__attribute__((used)) static void assert_log_empty() {
 assert_zu_eq(prof_log_bt_count(), 0,
     "The log has backtraces; it isn't empty");
 assert_zu_eq(prof_log_thr_count(), 0,
     "The log has threads; it isn't empty");
 assert_zu_eq(prof_log_alloc_count(), 0,
     "The log has allocations; it isn't empty");
}
