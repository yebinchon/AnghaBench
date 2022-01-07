
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_rpc_fetch_get_pos (char**) ;
 int tl_set_error (char*) ;

int tl_parse_save_pos (void) {
  char *error = 0;
  int r = do_rpc_fetch_get_pos (&error);
  if (error) {
    tl_set_error (error);
    return 0;
  } else {
    return r;
  }
}
