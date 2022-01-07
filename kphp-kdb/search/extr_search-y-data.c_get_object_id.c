
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned int get_object_id (long long item_id) {
  unsigned int r = item_id >> 32;
  return r ? r : (unsigned int) item_id;
}
