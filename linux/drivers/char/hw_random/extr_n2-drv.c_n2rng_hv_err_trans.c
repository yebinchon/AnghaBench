
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EAGAIN ;
 int EBUSY ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int EPERM ;
__attribute__((used)) static int n2rng_hv_err_trans(unsigned long hv_err)
{
 switch (hv_err) {
 case 129:
  return 0;
 case 128:
  return -EAGAIN;
 case 131:
  return -EPERM;
 case 132:
  return -EIO;
 case 133:
  return -EBUSY;
 case 134:
 case 130:
  return -EFAULT;
 default:
  return -EINVAL;
 }
}
