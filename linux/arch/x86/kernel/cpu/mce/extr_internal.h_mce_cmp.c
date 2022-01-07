
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {scalar_t__ bank; scalar_t__ status; scalar_t__ addr; scalar_t__ misc; } ;



__attribute__((used)) static inline bool mce_cmp(struct mce *m1, struct mce *m2)
{
 return m1->bank != m2->bank ||
  m1->status != m2->status ||
  m1->addr != m2->addr ||
  m1->misc != m2->misc;
}
