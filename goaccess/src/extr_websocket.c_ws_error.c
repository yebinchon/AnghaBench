
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSClient ;


 int WS_OPCODE_CLOSE ;
 unsigned short htobe16 (unsigned short) ;
 int memcpy (char*,unsigned short*,int) ;
 scalar_t__ snprintf (char*,int,char*,char const*) ;
 int ws_send_frame (int *,int ,char*,unsigned int) ;

__attribute__((used)) static int
ws_error (WSClient * client, unsigned short code, const char *err)
{
  unsigned int len;
  unsigned short code_be;
  char buf[128] = { 0 };

  len = 2;
  code_be = htobe16 (code);
  memcpy (buf, &code_be, 2);
  if (err)
    len += snprintf (buf + 2, sizeof buf - 4, "%s", err);

  return ws_send_frame (client, WS_OPCODE_CLOSE, buf, len);
}
