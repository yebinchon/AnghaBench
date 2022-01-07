
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dl_t ;
typedef int dl_status ;


 int DL_SUCCESS ;
 int printf (char*,char const*,int) ;

dl_status my_on_attach(dl_t dl, const char *device_id, int device_num) {
  printf("on_attach %s %d\n", device_id, device_num);
  return DL_SUCCESS;
}
