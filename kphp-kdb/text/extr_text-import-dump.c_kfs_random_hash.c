
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kfs_hash_t ;


 scalar_t__ lrand48 () ;

kfs_hash_t kfs_random_hash (void) {
  return (((kfs_hash_t) lrand48()) << 32) | ((unsigned) lrand48());
}
