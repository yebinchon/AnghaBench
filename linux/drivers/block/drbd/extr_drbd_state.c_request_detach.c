
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_device {int dummy; } ;
typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;


 int CS_INHIBIT_MD_IO ;
 int CS_ORDERED ;
 int CS_VERBOSE ;
 int D_FAILED ;
 int NS (int ,int ) ;
 int disk ;
 int drbd_req_state (struct drbd_device*,int ,int) ;

__attribute__((used)) static enum drbd_state_rv
request_detach(struct drbd_device *device)
{
 return drbd_req_state(device, NS(disk, D_FAILED),
   CS_VERBOSE | CS_ORDERED | CS_INHIBIT_MD_IO);
}
