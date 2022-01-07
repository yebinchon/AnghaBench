
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather_data {int dummy; } ;


 int memcache_return_file_location (struct gather_data*) ;
 scalar_t__ rpc_mode (struct gather_data*) ;
 int rpc_return_file_location (struct gather_data*) ;

__attribute__((used)) static int return_file_location (struct gather_data *G) {
  return rpc_mode (G) ? rpc_return_file_location (G) : memcache_return_file_location (G);
}
