
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerere_dir {unsigned char const* hash; } ;



__attribute__((used)) static const unsigned char *rerere_dir_hash(size_t i, void *table)
{
 struct rerere_dir **rr_dir = table;
 return rr_dir[i]->hash;
}
