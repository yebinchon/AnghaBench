
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;


 int GET ;


 int PARAM_TYPE ;
 int SET ;
 int interface ;
 int wl_iovar_get (int ,char*,void*,int) ;
 int wl_iovar_set (int ,char*,void*,int) ;
 int wl_iovar_setint (int ,char*,int) ;

__attribute__((used)) static int wlc_iovar(wlc_param param, void *data, void *value)
{
 int *val = (int *) value;
 char *iov = *((char **) data);
 int ret = 0;

 if (param & SET) {
  switch(param & PARAM_TYPE) {
   case 129:
    ret = wl_iovar_setint(interface, iov, *val);
    break;
   case 128:
    ret = wl_iovar_set(interface, iov, value, 6);
    break;
  }
 }
 if (param & GET) {
  switch(param & PARAM_TYPE) {
   case 129:
    ret = wl_iovar_get(interface, iov, val, sizeof(int));
    break;
   case 128:
    ret = wl_iovar_get(interface, iov, value, 6);
    break;
  }
 }

 return ret;
}
