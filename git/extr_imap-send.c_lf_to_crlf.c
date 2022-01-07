
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; char* buf; } ;


 int strbuf_attach (struct strbuf*,char*,size_t,size_t) ;
 char* xmallocz (size_t) ;

__attribute__((used)) static void lf_to_crlf(struct strbuf *msg)
{
 char *new_msg;
 size_t i, j;
 char lastc;


 for (i = j = 0, lastc = '\0'; i < msg->len; i++) {
  if (msg->buf[i] == '\n' && lastc != '\r')
   j++;
  lastc = msg->buf[i];
  j++;
 }

 new_msg = xmallocz(j);





 for (i = j = 0, lastc = '\0'; i < msg->len; i++) {
  if (msg->buf[i] == '\n' && lastc != '\r')
   new_msg[j++] = '\r';
  lastc = new_msg[j++] = msg->buf[i];
 }
 strbuf_attach(msg, new_msg, j, j + 1);
}
