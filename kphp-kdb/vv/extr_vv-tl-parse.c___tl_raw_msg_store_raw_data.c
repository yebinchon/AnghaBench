
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_OUT_RAW_MSG ;
 int assert (int) ;
 int rwm_push_data (int ,void const*,int) ;

__attribute__((used)) static inline void __tl_raw_msg_store_raw_data (const void *buf, int len) {
  assert (rwm_push_data (TL_OUT_RAW_MSG, buf, len) == len);
}
