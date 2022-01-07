
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_rpc_fetch_set_pos (int,char**) ;
 int tl_set_error (char*) ;

int tl_parse_restore_pos (int pos) {
  char *error = 0;
  do_rpc_fetch_set_pos (pos, &error);
  if (error) {
    tl_set_error (error);
    return 0;
  } else {
    return 1;
  }
}
