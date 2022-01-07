
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TL_OUT_RAW_MSG ;
 void* rwm_postpone_alloc (int ,int) ;

__attribute__((used)) static inline void *__tl_raw_msg_store_get_ptr (int len) {
  return rwm_postpone_alloc (TL_OUT_RAW_MSG, len);
}
