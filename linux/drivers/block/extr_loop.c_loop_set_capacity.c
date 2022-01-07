
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop_device {scalar_t__ lo_state; int lo_sizelimit; int lo_offset; } ;


 int ENXIO ;
 scalar_t__ Lo_bound ;
 int figure_loop_size (struct loop_device*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int loop_set_capacity(struct loop_device *lo)
{
 if (unlikely(lo->lo_state != Lo_bound))
  return -ENXIO;

 return figure_loop_size(lo, lo->lo_offset, lo->lo_sizelimit);
}
