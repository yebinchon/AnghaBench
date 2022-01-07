
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag71xx_desc {int ctrl; } ;


 int DESC_EMPTY ;

__attribute__((used)) static inline int ag71xx_desc_empty(struct ag71xx_desc *desc)
{
 return (desc->ctrl & DESC_EMPTY) != 0;
}
