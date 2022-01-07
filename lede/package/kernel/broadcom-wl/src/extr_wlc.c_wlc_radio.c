
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;


 int GET ;
 int PARAM_MODE ;
 int WLC_GET_RADIO ;
 int WLC_SET_RADIO ;
 int interface ;
 int wl_ioctl (int ,int ,int*,int) ;

__attribute__((used)) static int wlc_radio(wlc_param param, void *data, void *value)
{
 int *val = (int *) value;
 int ret;

 if ((param & PARAM_MODE) == GET) {
  ret = wl_ioctl(interface, WLC_GET_RADIO, val, sizeof(int));
  *val = ((*val & 1) ? 0 : 1);
 } else {
  *val = (1 << 16) | (*val ? 0 : 1);
  ret = wl_ioctl(interface, WLC_SET_RADIO, val, sizeof(int));
 }

 return ret;
}
