
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blk_status_t ;


 int __blk_mq_end_request (int *,int ) ;
 int blk_rq_cur_bytes (int *) ;
 int blk_update_request (int *,int ,int ) ;
 scalar_t__ pcd_busy ;
 int pcd_lock ;
 int * pcd_req ;
 int pcd_request () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void next_request(blk_status_t err)
{
 unsigned long saved_flags;

 spin_lock_irqsave(&pcd_lock, saved_flags);
 if (!blk_update_request(pcd_req, err, blk_rq_cur_bytes(pcd_req))) {
  __blk_mq_end_request(pcd_req, err);
  pcd_req = ((void*)0);
 }
 pcd_busy = 0;
 pcd_request();
 spin_unlock_irqrestore(&pcd_lock, saved_flags);
}
