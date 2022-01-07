
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range_set {scalar_t__ nr; scalar_t__ alloc; int * ranges; } ;


 int range_set_release (struct range_set*) ;

__attribute__((used)) static void range_set_move(struct range_set *dst, struct range_set *src)
{
 range_set_release(dst);
 dst->ranges = src->ranges;
 dst->nr = src->nr;
 dst->alloc = src->alloc;
 src->ranges = ((void*)0);
 src->alloc = src->nr = 0;
}
