
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drbd_interval {int rb; } ;


 int RB_CLEAR_NODE (int *) ;

__attribute__((used)) static inline void drbd_clear_interval(struct drbd_interval *i)
{
 RB_CLEAR_NODE(&i->rb);
}
