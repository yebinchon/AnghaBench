
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPC_REQ_RESULT ;
 int tl_store_end_ext (int ) ;

__attribute__((used)) static inline int tl_store_end (void) {
  return tl_store_end_ext (RPC_REQ_RESULT);
}
