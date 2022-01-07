
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_OUT_RAW_MSG ;
 int assert (int) ;
 int rwm_fetch_data_back (int ,int ,int) ;

__attribute__((used)) static inline void __tl_raw_msg_store_read_back (int len) {
  assert (rwm_fetch_data_back (TL_OUT_RAW_MSG, 0, len) == len);
}
