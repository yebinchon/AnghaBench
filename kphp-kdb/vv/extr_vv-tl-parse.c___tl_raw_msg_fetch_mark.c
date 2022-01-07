
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 struct raw_message* TL_IN_MARK ;
 int TL_IN_MARK_POS ;
 int TL_IN_POS ;
 int TL_IN_RAW_MSG ;
 int assert (int) ;
 int rwm_clone (struct raw_message*,int ) ;
 struct raw_message* zmalloc (int) ;

__attribute__((used)) static inline void __tl_raw_msg_fetch_mark (void) {
  assert (!TL_IN_MARK);
  struct raw_message *T = zmalloc (sizeof (*T));
  rwm_clone (T, TL_IN_RAW_MSG);
  TL_IN_MARK = T;
  TL_IN_MARK_POS = TL_IN_POS;
}
