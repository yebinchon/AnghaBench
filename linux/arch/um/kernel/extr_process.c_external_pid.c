
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* userspace_pid ;

__attribute__((used)) static inline int external_pid(void)
{

 return userspace_pid[0];
}
