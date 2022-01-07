
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPC_FUN_NEXT ;
 int TL_RESPONSE_INDERECT ;
 int tl_fetch_lookup_int () ;

int skip_response_inderect_on_answer (void **IP, void **Data) {
  int op = tl_fetch_lookup_int ();
  if (op == TL_RESPONSE_INDERECT) {
    return 1;
  }
  RPC_FUN_NEXT;
}
