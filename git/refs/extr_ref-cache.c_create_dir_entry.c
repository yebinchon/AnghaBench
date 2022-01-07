
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct ref_cache* cache; } ;
struct TYPE_4__ {TYPE_1__ subdir; } ;
struct ref_entry {int flag; TYPE_2__ u; } ;
struct ref_cache {int dummy; } ;


 int FLEX_ALLOC_MEM (struct ref_entry*,int ,char const*,size_t) ;
 int REF_DIR ;
 int REF_INCOMPLETE ;
 int name ;

struct ref_entry *create_dir_entry(struct ref_cache *cache,
       const char *dirname, size_t len,
       int incomplete)
{
 struct ref_entry *direntry;

 FLEX_ALLOC_MEM(direntry, name, dirname, len);
 direntry->u.subdir.cache = cache;
 direntry->flag = REF_DIR | (incomplete ? REF_INCOMPLETE : 0);
 return direntry;
}
