
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; } ;


 int do_rpc_fetch_string (char**) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ strdup (char*) ;
 TYPE_1__ tl ;

int tl_parse_string (char **s) {
  if (tl.error) { return -1; }
  int len = do_rpc_fetch_string (s);
  if (len < 0) {
    tl.error = strdup (*s);
    *s = 0;
    return -1;
  }
  char *t = malloc (len + 1);
  memcpy (t, *s, len);
  t[len] = 0;
  *s = t;
  return len;
}
