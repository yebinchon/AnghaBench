
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_special_context {int dummy; } ;
struct skd_device {struct skd_special_context internal_skspcl; } ;


 int TEST_UNIT_READY ;
 int skd_send_internal_skspcl (struct skd_device*,struct skd_special_context*,int ) ;

__attribute__((used)) static void skd_refresh_device_data(struct skd_device *skdev)
{
 struct skd_special_context *skspcl = &skdev->internal_skspcl;

 skd_send_internal_skspcl(skdev, skspcl, TEST_UNIT_READY);
}
