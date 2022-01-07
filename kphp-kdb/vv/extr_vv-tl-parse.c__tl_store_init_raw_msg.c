
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int PID; } ;
struct raw_message {int dummy; } ;


 int * TL_OUT_PID ;
 int __tl_store_init (struct raw_message*,struct udp_target*,int ,int *,int,int,long long) ;
 int rwm_init (struct raw_message*,int ) ;
 int tl_out_raw_msg_methods ;
 int tl_type_raw_msg ;
 scalar_t__ zmalloc (int) ;

__attribute__((used)) static inline int _tl_store_init_raw_msg (struct udp_target *S, long long qid, int keep_error) {
  if (S) {
    TL_OUT_PID = &(S->PID);
  } else {
    TL_OUT_PID = 0;
  }
  struct raw_message *d = 0;
  if (S) {
    d = (struct raw_message *)zmalloc (sizeof (*d));
    rwm_init (d, 0);
  }
  return __tl_store_init (d, S, tl_type_raw_msg, &tl_out_raw_msg_methods, (1 << 27), keep_error, qid);
}
