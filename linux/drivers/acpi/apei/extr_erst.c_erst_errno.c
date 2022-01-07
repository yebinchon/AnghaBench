
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int ENOSPC ;






__attribute__((used)) static inline int erst_errno(int command_status)
{
 switch (command_status) {
 case 128:
  return 0;
 case 132:
  return -ENODEV;
 case 131:
  return -ENOSPC;
 case 129:
 case 130:
  return -ENOENT;
 default:
  return -EINVAL;
 }
}
