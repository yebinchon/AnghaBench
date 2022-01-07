
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum drbd_role { ____Placeholder_drbd_role } drbd_role ;


 int R_PRIMARY ;
 int R_SECONDARY ;
 int R_UNKNOWN ;

__attribute__((used)) static enum drbd_role max_role(enum drbd_role role1, enum drbd_role role2)
{
 if (role1 == R_PRIMARY || role2 == R_PRIMARY)
  return R_PRIMARY;
 if (role1 == R_SECONDARY || role2 == R_SECONDARY)
  return R_SECONDARY;
 return R_UNKNOWN;
}
