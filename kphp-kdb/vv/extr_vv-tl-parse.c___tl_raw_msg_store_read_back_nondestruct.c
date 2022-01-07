
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 int TL_OUT_RAW_MSG ;
 int assert (int) ;
 int rwm_clone (struct raw_message*,int ) ;
 int rwm_fetch_data_back (struct raw_message*,void*,int) ;
 int rwm_free (struct raw_message*) ;

__attribute__((used)) static inline void __tl_raw_msg_store_read_back_nondestruct (void *buf, int len) {
  struct raw_message r;
  rwm_clone (&r, TL_OUT_RAW_MSG);
  assert (rwm_fetch_data_back (&r, buf, len) == len);
  rwm_free (&r);
}
