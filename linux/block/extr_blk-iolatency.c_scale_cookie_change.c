
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct child_latency_info {int scale_cookie; } ;
struct TYPE_4__ {TYPE_1__* q; } ;
struct blk_iolatency {TYPE_2__ rqos; } ;
struct TYPE_3__ {unsigned long nr_requests; } ;


 unsigned long DEFAULT_SCALE_COOKIE ;
 int atomic_add (unsigned long,int *) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 unsigned long atomic_read (int *) ;
 int atomic_set (int *,unsigned long) ;
 int atomic_sub (unsigned long,int *) ;
 unsigned long scale_amount (unsigned long,int) ;

__attribute__((used)) static void scale_cookie_change(struct blk_iolatency *blkiolat,
    struct child_latency_info *lat_info,
    bool up)
{
 unsigned long qd = blkiolat->rqos.q->nr_requests;
 unsigned long scale = scale_amount(qd, up);
 unsigned long old = atomic_read(&lat_info->scale_cookie);
 unsigned long max_scale = qd << 1;
 unsigned long diff = 0;

 if (old < DEFAULT_SCALE_COOKIE)
  diff = DEFAULT_SCALE_COOKIE - old;

 if (up) {
  if (scale + old > DEFAULT_SCALE_COOKIE)
   atomic_set(&lat_info->scale_cookie,
       DEFAULT_SCALE_COOKIE);
  else if (diff > qd)
   atomic_inc(&lat_info->scale_cookie);
  else
   atomic_add(scale, &lat_info->scale_cookie);
 } else {






  if (diff > qd) {
   if (diff < max_scale)
    atomic_dec(&lat_info->scale_cookie);
  } else {
   atomic_sub(scale, &lat_info->scale_cookie);
  }
 }
}
