
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_hash_sha1_global_init () ;

int git_hash_global_init(void)
{
 return git_hash_sha1_global_init();
}
