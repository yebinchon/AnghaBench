
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_interval {int rb; } ;


 int RB_EMPTY_NODE (int *) ;

__attribute__((used)) static inline bool drbd_interval_empty(struct drbd_interval *i)
{
 return RB_EMPTY_NODE(&i->rb);
}
