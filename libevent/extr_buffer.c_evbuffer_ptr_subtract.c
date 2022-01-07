
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t pos_in_chain; scalar_t__ chain; } ;
struct evbuffer_ptr {size_t pos; TYPE_1__ internal_; } ;
struct evbuffer {int dummy; } ;


 int EVBUFFER_PTR_SET ;
 int evbuffer_ptr_set (struct evbuffer*,struct evbuffer_ptr*,size_t const,int ) ;

__attribute__((used)) static int
evbuffer_ptr_subtract(struct evbuffer *buf, struct evbuffer_ptr *pos,
    size_t howfar)
{
 if (pos->pos < 0)
  return -1;
 if (howfar > (size_t)pos->pos)
  return -1;
 if (pos->internal_.chain && howfar <= pos->internal_.pos_in_chain) {
  pos->internal_.pos_in_chain -= howfar;
  pos->pos -= howfar;
  return 0;
 } else {
  const size_t newpos = pos->pos - howfar;


  return evbuffer_ptr_set(buf, pos, newpos, EVBUFFER_PTR_SET);
 }
}
