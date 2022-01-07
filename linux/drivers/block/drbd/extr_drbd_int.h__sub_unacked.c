
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int unacked_cnt; } ;


 int ERR_IF_CNT_IS_NEGATIVE (int ,char const*,int) ;
 int atomic_sub (int,int *) ;
 int unacked_cnt ;

__attribute__((used)) static inline void _sub_unacked(struct drbd_device *device, int n, const char *func, int line)
{
 atomic_sub(n, &device->unacked_cnt);
 ERR_IF_CNT_IS_NEGATIVE(unacked_cnt, func, line);
}
