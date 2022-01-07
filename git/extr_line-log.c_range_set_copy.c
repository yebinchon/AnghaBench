
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct range_set {int nr; int ranges; } ;


 int COPY_ARRAY (int ,int ,int ) ;
 int range_set_init (struct range_set*,int ) ;

__attribute__((used)) static void range_set_copy(struct range_set *dst, struct range_set *src)
{
 range_set_init(dst, src->nr);
 COPY_ARRAY(dst->ranges, src->ranges, src->nr);
 dst->nr = src->nr;
}
