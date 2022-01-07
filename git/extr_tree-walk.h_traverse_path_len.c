
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct traverse_info {int pathlen; } ;


 size_t st_add (int ,size_t) ;

__attribute__((used)) static inline size_t traverse_path_len(const struct traverse_info *info,
           size_t namelen)
{
 return st_add(info->pathlen, namelen);
}
