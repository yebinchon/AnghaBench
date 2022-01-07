
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process_id {int dummy; } ;
typedef enum tl_type { ____Placeholder_tl_type } tl_type ;


 int TL_ERROR_UNKNOWN ;
 int tl_fetch_error () ;
 int tl_fetch_set_error (char*,int ) ;
 scalar_t__ tl_init_store_keep_error (int,struct process_id*,long long) ;
 int tl_store_end () ;

void _fail_query (enum tl_type type, struct process_id *PID, long long qid) {
  if (PID) {
    if (tl_init_store_keep_error (type, PID, qid) >= 0) {
      if (!tl_fetch_error ()) {
        tl_fetch_set_error ("Unknown error", TL_ERROR_UNKNOWN);
      }
      tl_store_end ();
    }
  }
}
