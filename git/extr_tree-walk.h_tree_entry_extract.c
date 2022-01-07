
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {char* path; unsigned short mode; struct object_id const oid; } ;
struct tree_desc {TYPE_1__ entry; } ;



__attribute__((used)) static inline const struct object_id *tree_entry_extract(struct tree_desc *desc, const char **pathp, unsigned short *modep)
{
 *pathp = desc->entry.path;
 *modep = desc->entry.mode;
 return &desc->entry.oid;
}
