
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* buf; int len; } ;


 int tr2_sid_compute () ;
 TYPE_1__ tr2sid_buf ;

const char *tr2_sid_get(void)
{
 if (!tr2sid_buf.len)
  tr2_sid_compute();

 return tr2sid_buf.buf;
}
