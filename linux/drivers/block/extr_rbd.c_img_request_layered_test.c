
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_img_request {int flags; } ;


 int IMG_REQ_LAYERED ;
 int smp_mb () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static bool img_request_layered_test(struct rbd_img_request *img_request)
{
 smp_mb();
 return test_bit(IMG_REQ_LAYERED, &img_request->flags) != 0;
}
