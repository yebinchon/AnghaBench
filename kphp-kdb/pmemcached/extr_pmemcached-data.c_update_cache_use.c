
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_cache_use (int) ;
 int del_cache_use (int) ;

void update_cache_use (int n) {
  del_cache_use (n);
  add_cache_use (n);
}
