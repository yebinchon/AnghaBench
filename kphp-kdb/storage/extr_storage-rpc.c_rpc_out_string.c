
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rpc_out_cstring (char const*,int ) ;
 int strlen (char const*) ;

void rpc_out_string (const char *str) {
  rpc_out_cstring (str, strlen (str));
}
