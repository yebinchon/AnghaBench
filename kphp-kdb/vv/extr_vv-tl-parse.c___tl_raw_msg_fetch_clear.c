
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 scalar_t__ TL_IN ;
 scalar_t__ TL_IN_RAW_MSG ;
 int rwm_free (scalar_t__) ;
 int zfree (scalar_t__,int) ;

__attribute__((used)) static inline void __tl_raw_msg_fetch_clear (void) {
  if (TL_IN_RAW_MSG) {
    rwm_free (TL_IN_RAW_MSG);
    zfree (TL_IN_RAW_MSG, sizeof (struct raw_message));
    TL_IN = 0;
  }
}
