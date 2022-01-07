
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int targ_weights_vector_t ;


 int weights_coords ;

__attribute__((used)) static inline int get_vector_size (void) {
  return sizeof (targ_weights_vector_t) + sizeof (double) * weights_coords;
}
