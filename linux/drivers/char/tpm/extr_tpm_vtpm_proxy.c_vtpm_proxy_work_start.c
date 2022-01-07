
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proxy_dev {int work; } ;


 int queue_work (int ,int *) ;
 int workqueue ;

__attribute__((used)) static inline void vtpm_proxy_work_start(struct proxy_dev *proxy_dev)
{
 queue_work(workqueue, &proxy_dev->work);
}
