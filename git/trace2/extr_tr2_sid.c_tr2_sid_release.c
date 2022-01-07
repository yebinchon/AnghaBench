
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strbuf_release (int *) ;
 int tr2sid_buf ;

void tr2_sid_release(void)
{
 strbuf_release(&tr2sid_buf);
}
