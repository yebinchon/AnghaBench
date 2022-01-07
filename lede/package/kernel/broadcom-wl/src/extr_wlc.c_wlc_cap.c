
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;


 int BUFSIZE ;
 int GET ;
 int interface ;
 int wl_iovar_get (int ,char*,void*,int ) ;

__attribute__((used)) static int wlc_cap(wlc_param param, void *data, void *value)
{
 char *iov = *((char **) data);

 if (param & GET)
  return wl_iovar_get(interface, iov, value, BUFSIZE);

 return -1;
}
