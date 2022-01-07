
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int fprintf (int ,char*) ;
 int http_return (struct connection*,char const*) ;
 int stderr ;

int http_return_history (struct connection *c, const char *ans) {
  if (ans == ((void*)0)) {
    fprintf (stderr, "buffer overflow\n");
    return -500;
  }

  http_return (c, ans);

  return 0;
}
