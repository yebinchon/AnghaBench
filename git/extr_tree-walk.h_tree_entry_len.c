
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_entry {int pathlen; } ;



__attribute__((used)) static inline int tree_entry_len(const struct name_entry *ne)
{
 return ne->pathlen;
}
