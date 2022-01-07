
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct api_info {unsigned long major; unsigned long minor; scalar_t__ refcnt; } ;


 int EINVAL ;
 struct api_info* __get_info (unsigned long) ;
 int hvapi_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int sun4v_hvapi_get(unsigned long group,
      unsigned long *major,
      unsigned long *minor)
{
 struct api_info *p;
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&hvapi_lock, flags);
 ret = -EINVAL;
 p = __get_info(group);
 if (p && p->refcnt) {
  *major = p->major;
  *minor = p->minor;
  ret = 0;
 }
 spin_unlock_irqrestore(&hvapi_lock, flags);

 return ret;
}
