
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int ITER_FINISHED ;

int jv_object_iter_valid(jv object, int i) {
  return i != ITER_FINISHED;
}
