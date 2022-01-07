
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSOpcode ;
typedef int WSClient ;


 int free (char*) ;
 char* sanitize_utf8 (char const*,int) ;
 int ws_send_frame (int *,int ,char*,int) ;

int
ws_send_data (WSClient * client, WSOpcode opcode, const char *p, int sz)
{
  char *buf = ((void*)0);

  buf = sanitize_utf8 (p, sz);
  ws_send_frame (client, opcode, buf, sz);
  free (buf);

  return 0;
}
