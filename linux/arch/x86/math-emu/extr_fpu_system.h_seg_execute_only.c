
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct desc_struct {int type; } ;


 int SEG_TYPE_EXECUTE ;
 int SEG_TYPE_EXECUTE_MASK ;

__attribute__((used)) static inline bool seg_execute_only(struct desc_struct *d)
{
 return (d->type & SEG_TYPE_EXECUTE_MASK) == SEG_TYPE_EXECUTE;
}
