
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ initializing ;

__attribute__((used)) static int pmac_late_init(void)
{
 initializing = 0;
 return 0;
}
