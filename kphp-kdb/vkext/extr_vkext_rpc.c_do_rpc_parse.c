
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ buffer_create_data (char*,int) ;
 scalar_t__ buffer_delete (scalar_t__) ;
 scalar_t__ inbuf ;
 int memcpy (char*,char const*,int) ;
 char* zzemalloc (int) ;

void do_rpc_parse (const char *s, int len) {
  char *ans = zzemalloc (len);
  memcpy (ans, s, len);
  if (inbuf) {
    inbuf = buffer_delete (inbuf);
  }
  inbuf = buffer_create_data (ans, len);
}
