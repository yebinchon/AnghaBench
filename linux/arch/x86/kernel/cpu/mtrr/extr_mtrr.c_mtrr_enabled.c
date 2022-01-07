
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __mtrr_enabled ;

__attribute__((used)) static bool mtrr_enabled(void)
{
 return __mtrr_enabled;
}
