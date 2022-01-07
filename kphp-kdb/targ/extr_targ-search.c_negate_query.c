
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int max_res; } ;
typedef TYPE_1__ query_t ;


 int GRAY ;

__attribute__((used)) static inline void negate_query (query_t *Q) {
  Q->flags ^= 1;
  if (Q->max_res != GRAY) {
    Q->max_res = ~Q->max_res;
  }
}
