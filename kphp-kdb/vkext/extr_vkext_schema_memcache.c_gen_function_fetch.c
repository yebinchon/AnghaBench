
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IP_dup (void**,int) ;
 int fIP ;
 void* tlcomb_fetch_type ;
 void* tlsub_ret_ok ;

int gen_function_fetch (void **IP, int max_size) {
  if (max_size <= 10) { return -1; }
  int l = 0;
  IP[l ++] = tlcomb_fetch_type;
  IP[l ++] = tlsub_ret_ok;
  fIP = IP_dup (IP, l);
  return 2;
}
