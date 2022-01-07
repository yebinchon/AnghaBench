
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int blk_status_t ;


 int __blk_mq_end_request (int *,int ) ;
 int blk_rq_cur_bytes (int *) ;
 int blk_update_request (int *,int ,int ) ;
 int * fd_request ;

__attribute__((used)) static void fd_end_request_cur(blk_status_t err)
{
 if (!blk_update_request(fd_request, err,
    blk_rq_cur_bytes(fd_request))) {
  __blk_mq_end_request(fd_request, err);
  fd_request = ((void*)0);
 }
}
