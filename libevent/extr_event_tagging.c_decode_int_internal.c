
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evbuffer {int dummy; } ;
typedef int ev_uint32_t ;


 int DECODE_INT_INTERNAL (int ,int,int *,struct evbuffer*,int) ;

__attribute__((used)) static int
decode_int_internal(ev_uint32_t *pnumber, struct evbuffer *evbuf, int offset)
{
 ev_uint32_t number = 0;
 DECODE_INT_INTERNAL(number, 8, pnumber, evbuf, offset);
}
