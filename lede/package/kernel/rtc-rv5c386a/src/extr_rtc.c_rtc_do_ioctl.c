
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
typedef int rtc_tm ;


 int CAP_SYS_TIME ;
 int EACCES ;
 int EFAULT ;
 int ENOTTY ;


 int capable (int ) ;
 int copy_from_user (struct rtc_time*,struct rtc_time*,int) ;
 int copy_to_user (void*,struct rtc_time*,int) ;
 int get_rtc_time (struct rtc_time*) ;
 int memset (struct rtc_time*,int ,int) ;
 int set_rtc_time (struct rtc_time*) ;

__attribute__((used)) static int rtc_do_ioctl(unsigned int cmd, unsigned long arg)
{
 struct rtc_time rtc_tm;

 switch (cmd) {
  case 129:
   memset(&rtc_tm, 0, sizeof(struct rtc_time));
   get_rtc_time(&rtc_tm);
   if (copy_to_user((void *)arg, &rtc_tm, sizeof(rtc_tm)))
    return -EFAULT;
   break;

  case 128:
   if (!capable(CAP_SYS_TIME))
    return -EACCES;

   if (copy_from_user(&rtc_tm, (struct rtc_time *)arg,
        sizeof(struct rtc_time)))
    return -EFAULT;

   set_rtc_time(&rtc_tm);
   break;

  default:
   return -ENOTTY;
 }

 return 0;
}
