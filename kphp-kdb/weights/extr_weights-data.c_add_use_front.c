
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int weights_vector_t ;
struct TYPE_3__ {int next; } ;


 int insert_use (TYPE_1__*,int *,int ) ;
 TYPE_1__ vectors ;

__attribute__((used)) static void add_use_front (weights_vector_t *V) {
  insert_use (&vectors, V, vectors.next);
}
