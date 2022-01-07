
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_base_cache_key {scalar_t__ p; scalar_t__ base_offset; } ;



__attribute__((used)) static int delta_base_cache_key_eq(const struct delta_base_cache_key *a,
       const struct delta_base_cache_key *b)
{
 return a->p == b->p && a->base_offset == b->base_offset;
}
