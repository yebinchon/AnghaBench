
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int * Connections ;
 scalar_t__ MAX_RES ;
 scalar_t__ R ;
 scalar_t__ R_end ;
 int max_connection ;
 int return_one_key_list (struct connection*,char const*,int,int,int,scalar_t__,scalar_t__) ;
 int store_connection (int *) ;

int mcp_get_connections (struct connection *c, const char *key, int key_len) {
  int i;
  R_end = R;
  for (i = 0; i <= max_connection && R_end < R + MAX_RES; i++) {
    store_connection (&Connections[i]);
  }
  return return_one_key_list (c, key, key_len, max_connection+1, 5, R, R_end - R);
}
