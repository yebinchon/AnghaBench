
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {scalar_t__ data; } ;


 int cache_uri_get_size_additional_storage_bytes (struct cache_uri const*) ;
 int sizeof_uri (scalar_t__) ;
 scalar_t__ uri_off ;

__attribute__((used)) static int cache_uri_sizeof (const struct cache_uri *U) {
  return (sizeof_uri (U->data + uri_off) + cache_uri_get_size_additional_storage_bytes (U) + 3) & -4;
}
