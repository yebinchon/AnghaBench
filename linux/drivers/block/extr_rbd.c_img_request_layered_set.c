
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_img_request {int flags; } ;


 int IMG_REQ_LAYERED ;
 int set_bit (int ,int *) ;
 int smp_mb () ;

__attribute__((used)) static void img_request_layered_set(struct rbd_img_request *img_request)
{
 set_bit(IMG_REQ_LAYERED, &img_request->flags);
 smp_mb();
}
