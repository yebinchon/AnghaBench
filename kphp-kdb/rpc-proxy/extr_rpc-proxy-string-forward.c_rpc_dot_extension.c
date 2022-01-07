
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPC_FUN_NEXT ;
 char* memchr (char const*,char,int) ;

int rpc_dot_extension (void **IP, void **Data) {
  const char *key = *Data;
  int key_len = (long)*(Data + 1);
  char *dot_pos = memchr (key, '.', key_len);
  if (dot_pos) {
    *(Data + 1) = (void *)(long)(dot_pos - key);
  }
  RPC_FUN_NEXT;
}
