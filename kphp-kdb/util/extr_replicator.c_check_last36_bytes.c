
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repl_server_status {char* wptr; char* rptr; } ;


 int LEV_ROTATE_TO ;
 int load_byte (struct repl_server_status*,char**) ;

int check_last36_bytes (struct repl_server_status *S) {
  char *ptr = S->wptr;
  int val = 0, res = 0, i;
  for (i = 0; i < 36 && ptr != S->rptr; i++) {
    val = (val << 8) | load_byte (S, &ptr);
    if (val == LEV_ROTATE_TO) {
      res = i + 1;
    }
  }
  return res;
}
