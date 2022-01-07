
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashmap {int dummy; } ;


 int LAZY_MAX_MUTEX ;
 int hashmap_bucket (struct hashmap const*,unsigned int) ;

__attribute__((used)) static inline int compute_dir_lock_nr(
 const struct hashmap *map,
 unsigned int hash)
{
 return hashmap_bucket(map, hash) % LAZY_MAX_MUTEX;
}
