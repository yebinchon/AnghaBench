
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ace_device {TYPE_1__* reg_ops; } ;
struct TYPE_2__ {int (* in ) (struct ace_device*,int) ;} ;


 int stub1 (struct ace_device*,int) ;

__attribute__((used)) static inline u16 ace_in(struct ace_device *ace, int reg)
{
 return ace->reg_ops->in(ace, reg);
}
