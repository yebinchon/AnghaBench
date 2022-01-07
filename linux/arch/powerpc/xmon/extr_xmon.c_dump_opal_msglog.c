
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

__attribute__((used)) static inline void dump_opal_msglog(void)
{
 printf("Machine is not running OPAL firmware.\n");
}
