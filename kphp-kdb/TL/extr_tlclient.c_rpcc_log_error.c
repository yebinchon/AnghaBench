
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* P ;
 int assert (int) ;
 int log_printf (char*,int,int,char*) ;
 int tl_fetch_string (int*,int,char**,int*,int ) ;

int rpcc_log_error (int len) {
  assert (!(len % 4));
  int code = P[5], ilen = (len / 4) - 7;
  int l;
  char *text;
  assert (ilen > 0);
  int r = tl_fetch_string (&P[6], ilen, &text, &l, 0);
  assert (r == ilen);
  log_printf ("Receive RPC_REQ_ERROR (code: %d, text: \"%.*s\")\n", code, l, text);
  return 0;
}
