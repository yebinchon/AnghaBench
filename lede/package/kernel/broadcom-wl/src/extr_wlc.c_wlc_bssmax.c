
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;


 int BUFSIZE ;
 int GET ;
 int interface ;
 scalar_t__ strstr (int ,char*) ;
 int wl_iovar_get (int ,char*,int ,int ) ;
 int wlbuf ;

__attribute__((used)) static int wlc_bssmax(wlc_param param, void *data, void *value)
{
 int *val = (int *) value;
 char *iov = *((char **) data);
 int ret = -1;

 if (param & GET) {
  ret = wl_iovar_get(interface, iov, wlbuf, BUFSIZE);
  if (!ret) {
   if (strstr(wlbuf, "mbss4"))
    *val = 4;
   else if (strstr(wlbuf, "mbss16"))
    *val = 16;
   else
    *val = 1;
  }
 }

 return ret;
}
