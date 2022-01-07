
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 int TL_IN_RAW_MSG ;
 int TL_OUT_RAW_MSG ;
 int rwm_clone (struct raw_message*,int ) ;
 int rwm_split_head (struct raw_message*,int ,int) ;
 int rwm_trunc (struct raw_message*,int) ;
 int rwm_union (int ,struct raw_message*) ;

__attribute__((used)) static inline void __tl_raw_msg_raw_msg_copy_through (int len, int advance) {
  if (!advance) {
    struct raw_message r;
    rwm_clone (&r, TL_IN_RAW_MSG);
    rwm_trunc (&r, len);
    rwm_union (TL_OUT_RAW_MSG, &r);
  } else {
    struct raw_message r;
    rwm_split_head (&r, TL_IN_RAW_MSG, len);
    rwm_union (TL_OUT_RAW_MSG, &r);
  }
}
