
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int size; } ;



__attribute__((used)) static int cache_uri_get_size_additional_storage_bytes (const struct cache_uri *U) {
  if (U->size & 0x80000000) {
    return 0;
  }
  return (U->size >> 24);
}
