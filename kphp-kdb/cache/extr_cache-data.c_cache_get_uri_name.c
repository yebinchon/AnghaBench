
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {scalar_t__ data; } ;


 scalar_t__ uri_off ;

char *const cache_get_uri_name (const struct cache_uri *const U) {
  return (char *const) (U->data + uri_off);
}
