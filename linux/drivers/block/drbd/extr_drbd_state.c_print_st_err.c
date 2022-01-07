
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union drbd_state {int dummy; } drbd_state ;
struct drbd_device {int dummy; } ;
typedef enum drbd_state_rv { ____Placeholder_drbd_state_rv } drbd_state_rv ;


 int SS_IN_TRANSIENT_STATE ;
 int drbd_err (struct drbd_device*,char*,int ) ;
 int drbd_set_st_err_str (int) ;
 int print_st (struct drbd_device*,char*,union drbd_state) ;

void print_st_err(struct drbd_device *device, union drbd_state os,
           union drbd_state ns, enum drbd_state_rv err)
{
 if (err == SS_IN_TRANSIENT_STATE)
  return;
 drbd_err(device, "State change failed: %s\n", drbd_set_st_err_str(err));
 print_st(device, " state", os);
 print_st(device, "wanted", ns);
}
