
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int rs_pending_cnt; } ;


 int ERR_IF_CNT_IS_NEGATIVE (int ,char const*,int) ;
 int atomic_dec (int *) ;
 int rs_pending_cnt ;

__attribute__((used)) static inline void _dec_rs_pending(struct drbd_device *device, const char *func, int line)
{
 atomic_dec(&device->rs_pending_cnt);
 ERR_IF_CNT_IS_NEGATIVE(rs_pending_cnt, func, line);
}
