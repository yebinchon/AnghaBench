
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_workqueue (int ) ;
 int kintegrityd_wq ;

void blk_flush_integrity(void)
{
 flush_workqueue(kintegrityd_wq);
}
