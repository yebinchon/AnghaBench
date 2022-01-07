
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbd_device {int dummy; } ;
struct page {int dummy; } ;
typedef enum rbd_notify_op { ____Placeholder_rbd_notify_op } rbd_notify_op ;


 int __rbd_notify_op_lock (struct rbd_device*,int,struct page***,size_t*) ;
 int calc_pages_for (int ,size_t) ;
 int ceph_release_page_vector (struct page**,int ) ;

__attribute__((used)) static void rbd_notify_op_lock(struct rbd_device *rbd_dev,
          enum rbd_notify_op notify_op)
{
 struct page **reply_pages;
 size_t reply_len;

 __rbd_notify_op_lock(rbd_dev, notify_op, &reply_pages, &reply_len);
 ceph_release_page_vector(reply_pages, calc_pages_for(0, reply_len));
}
