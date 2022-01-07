
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sys_caps_initialised ;

__attribute__((used)) static inline void set_sys_caps_initialised(void)
{
 sys_caps_initialised = 1;
}
