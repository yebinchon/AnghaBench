
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SYSCFGID ;
 unsigned int get_er (int ) ;

__attribute__((used)) static inline int get_core_id(void)
{

 unsigned int core_id = get_er(SYSCFGID);
 return core_id & 0x3fff;
}
