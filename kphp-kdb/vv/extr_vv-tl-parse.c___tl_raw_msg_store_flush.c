
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int dummy; } ;
struct raw_message {int dummy; } ;


 scalar_t__ TL_OUT ;
 scalar_t__ TL_OUT_EXTRA ;
 scalar_t__ TL_OUT_RAW_MSG ;
 int assert (scalar_t__) ;
 int udp_target_send (struct udp_target*,scalar_t__,int ) ;
 int zfree (scalar_t__,int) ;

__attribute__((used)) static inline void __tl_raw_msg_store_flush (void) {

  assert (TL_OUT_RAW_MSG);
  assert (TL_OUT_EXTRA);
  udp_target_send ((struct udp_target *)TL_OUT_EXTRA, TL_OUT_RAW_MSG, 0);
  zfree (TL_OUT_RAW_MSG, sizeof (struct raw_message));
  TL_OUT = 0;

}
