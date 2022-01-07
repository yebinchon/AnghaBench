
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range {scalar_t__ end; scalar_t__ start; } ;



__attribute__((used)) static int ranges_overlap(struct range *a, struct range *b)
{
 return !(a->end <= b->start || b->end <= a->start);
}
