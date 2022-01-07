
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ object_id_t ;



__attribute__((used)) static inline int object_id_less (object_id_t a, object_id_t b) {
  return a < b;
}
