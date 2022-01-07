
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wlc_param ;


 int BUFSIZE ;


 int NOARG ;
 int PARAM_TYPE ;
 int SET ;

 int interface ;
 int wl_ioctl (int ,unsigned int,void*,int) ;

__attribute__((used)) static int wlc_ioctl(wlc_param param, void *data, void *value)
{
 unsigned int *var = ((unsigned int *) data);
 unsigned int ioc = *var;

 if (param & NOARG) {
  return wl_ioctl(interface, ioc, ((void*)0), 0);
 }
 switch(param & PARAM_TYPE) {
  case 129:
   return wl_ioctl(interface, ((param & SET) ? (ioc) : (ioc >> 16)) & 0xffff, value, 6);
  case 130:
   return wl_ioctl(interface, ((param & SET) ? (ioc) : (ioc >> 16)) & 0xffff, value, sizeof(int));
  case 128:
   return wl_ioctl(interface, ((param & SET) ? (ioc) : (ioc >> 16)) & 0xffff, value, BUFSIZE);
 }
 return 0;
}
