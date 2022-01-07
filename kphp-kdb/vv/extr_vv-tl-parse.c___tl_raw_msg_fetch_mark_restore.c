
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 scalar_t__ TL_IN_MARK ;
 int TL_IN_MARK_POS ;
 int TL_IN_POS ;
 struct raw_message* TL_IN_RAW_MSG ;
 int TL_IN_REMAINING ;
 int assert (scalar_t__) ;
 int rwm_free (struct raw_message*) ;
 int zfree (scalar_t__,int) ;

__attribute__((used)) static inline void __tl_raw_msg_fetch_mark_restore (void) {
  assert (TL_IN_MARK);
  rwm_free (TL_IN_RAW_MSG);
  *TL_IN_RAW_MSG = *(struct raw_message *)TL_IN_MARK;
  zfree (TL_IN_MARK, sizeof (struct raw_message));
  TL_IN_MARK = 0;
  int x = TL_IN_POS - TL_IN_MARK_POS;
  TL_IN_POS -= x;
  TL_IN_REMAINING += x;
}
