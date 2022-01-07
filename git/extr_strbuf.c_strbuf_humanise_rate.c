
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int off_t ;


 int strbuf_humanise (struct strbuf*,int ,int) ;

void strbuf_humanise_rate(struct strbuf *buf, off_t bytes)
{
 strbuf_humanise(buf, bytes, 1);
}
