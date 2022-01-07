
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int dummy; } ;
typedef int off_t ;


 int get_delta_base_cache_entry (struct packed_git*,int ) ;

__attribute__((used)) static int in_delta_base_cache(struct packed_git *p, off_t base_offset)
{
 return !!get_delta_base_cache_entry(p, base_offset);
}
