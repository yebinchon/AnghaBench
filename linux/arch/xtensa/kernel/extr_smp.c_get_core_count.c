
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSCFGID ;
 unsigned int get_er (int ) ;

__attribute__((used)) static inline unsigned int get_core_count(void)
{

 unsigned int syscfgid = get_er(SYSCFGID);
 return ((syscfgid >> 18) & 0xf) + 1;
}
