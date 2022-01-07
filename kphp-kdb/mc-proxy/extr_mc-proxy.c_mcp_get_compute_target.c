
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct conn_target {int port; TYPE_1__ target; } ;


 int * R ;
 struct conn_target* calculate_key_target (char const*,int) ;
 int ntohl (int ) ;
 int return_one_key_list (struct connection*,char const*,int,int,int,int *,int) ;

int mcp_get_compute_target (struct connection *c, const char *key, int key_len) {
  struct conn_target *S = calculate_key_target (key+6, key_len-6);
  if (!S) {
    return 0;
  }
  R[0] = ntohl (S->target.s_addr);
  R[1] = S->port;
  return return_one_key_list (c, key, key_len, 1, 2, R, 2);
}
