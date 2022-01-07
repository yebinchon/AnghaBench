
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int weights_vector_t ;
struct TYPE_3__ {int prev; } ;


 int insert_use (int ,int *,TYPE_1__*) ;
 TYPE_1__ vectors ;

__attribute__((used)) static void add_use_back (weights_vector_t *V) {
  insert_use (vectors.prev, V, &vectors);
}
