
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int EPERM ;
__attribute__((used)) static int hvcs_convert(long to_convert)
{
 switch (to_convert) {
  case 128:
   return 0;
  case 129:
   return -EINVAL;
  case 136:
   return -EIO;
  case 138:
  case 131:
  case 133:
  case 135:
  case 130:
  case 132:
  case 134:
   return -EBUSY;
  case 137:
  default:
   return -EPERM;
 }
}
