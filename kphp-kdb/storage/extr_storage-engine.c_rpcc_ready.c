
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int forward_query_check_all_completions () ;
 int vkprintf (int,char*,int) ;

int rpcc_ready (struct connection *c) {
  int r = forward_query_check_all_completions ();
  if (r > 0) {
    vkprintf (3, "rpcc_ready: forward_query_check_all_completions () returns %d.\n", r);
  }
  return 0;
}
