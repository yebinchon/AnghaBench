
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ondisk_cache_entry {int dummy; } ;
struct cache_entry {int dummy; } ;


 scalar_t__ align_padding_size (long,int ) ;

__attribute__((used)) static size_t estimate_cache_size(size_t ondisk_size, unsigned int entries)
{
 long per_entry = sizeof(struct cache_entry) - sizeof(struct ondisk_cache_entry);




 per_entry += align_padding_size(per_entry, 0);
 return ondisk_size + entries * per_entry;
}
