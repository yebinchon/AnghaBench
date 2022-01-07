
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int packet_trace (char*,int,int) ;
 int strbuf_add (struct strbuf*,char*,int) ;

void packet_buf_delim(struct strbuf *buf)
{
 packet_trace("0001", 4, 1);
 strbuf_add(buf, "0001", 4);
}
