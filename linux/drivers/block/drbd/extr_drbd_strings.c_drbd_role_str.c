
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drbd_role { ____Placeholder_drbd_role } drbd_role ;


 int R_SECONDARY ;
 char const** drbd_role_s_names ;

const char *drbd_role_str(enum drbd_role s)
{
 return s > R_SECONDARY ? "TOO_LARGE" : drbd_role_s_names[s];
}
