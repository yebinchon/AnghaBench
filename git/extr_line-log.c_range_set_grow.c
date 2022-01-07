
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range_set {int alloc; scalar_t__ nr; int ranges; } ;


 int ALLOC_GROW (int ,scalar_t__,int ) ;

__attribute__((used)) static void range_set_grow(struct range_set *rs, size_t extra)
{
 ALLOC_GROW(rs->ranges, rs->nr + extra, rs->alloc);
}
