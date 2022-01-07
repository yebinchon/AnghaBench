
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int misc_wait; int ap_pending_cnt; } ;


 int ERR_IF_CNT_IS_NEGATIVE (int ,char const*,int) ;
 int ap_pending_cnt ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void _dec_ap_pending(struct drbd_device *device, const char *func, int line)
{
 if (atomic_dec_and_test(&device->ap_pending_cnt))
  wake_up(&device->misc_wait);
 ERR_IF_CNT_IS_NEGATIVE(ap_pending_cnt, func, line);
}
