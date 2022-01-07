
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* flush_packet ) (int ) ;} ;


 TYPE_1__* RPCS_FUNC (int ) ;
 int TL_OUT_CONN ;
 int stub1 (int ) ;

__attribute__((used)) static inline void __tl_conn_store_flush (void) {
  RPCS_FUNC(TL_OUT_CONN)->flush_packet(TL_OUT_CONN);
}
