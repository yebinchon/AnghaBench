
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_img_request {int work_result; int work; } ;


 int INIT_WORK (int *,int ) ;
 int queue_work (int ,int *) ;
 int rbd_img_handle_request_work ;
 int rbd_wq ;

__attribute__((used)) static void rbd_img_schedule(struct rbd_img_request *img_req, int result)
{
 INIT_WORK(&img_req->work, rbd_img_handle_request_work);
 img_req->work_result = result;
 queue_work(rbd_wq, &img_req->work);
}
