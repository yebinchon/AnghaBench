
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOIOCTLCMD ;
 int ENOTTY ;

__attribute__((used)) static inline int is_unrecognized_ioctl(int ret)
{
 return ret == -EINVAL ||
  ret == -ENOTTY ||
  ret == -ENOIOCTLCMD;
}
