
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;


 int GET ;

 int PARAM_TYPE ;
 int SET ;
 int interface ;
 int vif ;
 int wl_bssiovar_get (int ,char*,int ,int*,int) ;
 int wl_bssiovar_setint (int ,char*,int ,int) ;

__attribute__((used)) static int wlc_bssiovar(wlc_param param, void *data, void *value)
{
 int *val = (int *) value;
 char *iov = *((char **) data);
 int ret = 0;

 if (param & SET) {
  switch(param & PARAM_TYPE) {
   case 128:
    ret = wl_bssiovar_setint(interface, iov, vif, *val);
  }
 }
 if (param & GET) {
  switch(param & PARAM_TYPE) {
   case 128:
    ret = wl_bssiovar_get(interface, iov, vif, val, sizeof(int));
  }
 }

 return ret;
}
