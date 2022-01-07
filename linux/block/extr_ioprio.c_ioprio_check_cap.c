
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int EPERM ;
 int IOPRIO_BE_NR ;




 int IOPRIO_PRIO_CLASS (int) ;
 int IOPRIO_PRIO_DATA (int) ;
 int capable (int ) ;

int ioprio_check_cap(int ioprio)
{
 int class = IOPRIO_PRIO_CLASS(ioprio);
 int data = IOPRIO_PRIO_DATA(ioprio);

 switch (class) {
  case 128:
   if (!capable(CAP_SYS_ADMIN))
    return -EPERM;


  case 131:
   if (data >= IOPRIO_BE_NR || data < 0)
    return -EINVAL;

   break;
  case 130:
   break;
  case 129:
   if (data)
    return -EINVAL;
   break;
  default:
   return -EINVAL;
 }

 return 0;
}
