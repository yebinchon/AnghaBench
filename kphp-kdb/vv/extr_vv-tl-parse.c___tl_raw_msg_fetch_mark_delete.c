
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 scalar_t__ TL_IN_MARK ;
 int assert (scalar_t__) ;
 int rwm_free (scalar_t__) ;
 int zfree (scalar_t__,int) ;

__attribute__((used)) static inline void __tl_raw_msg_fetch_mark_delete (void) {
  assert (TL_IN_MARK);
  rwm_free (TL_IN_MARK);
  zfree (TL_IN_MARK, sizeof (struct raw_message));
  TL_IN_MARK = 0;
}
