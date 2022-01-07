
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __imr_remove_range (int,int ,int ) ;

__attribute__((used)) static inline int imr_clear(int reg)
{
 return __imr_remove_range(reg, 0, 0);
}
