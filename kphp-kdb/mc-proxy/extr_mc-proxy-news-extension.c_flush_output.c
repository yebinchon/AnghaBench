
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int (* flush_query ) (struct connection*) ;} ;


 TYPE_1__* MCC_FUNC (struct connection*) ;
 int stub1 (struct connection*) ;

__attribute__((used)) static inline int flush_output (struct connection *c) {

  return MCC_FUNC (c)->flush_query (c);
}
