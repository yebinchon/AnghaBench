
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct kobj_attribute {scalar_t__ (* show ) (int *,struct kobj_attribute*,char*) ;TYPE_1__ attr; } ;
struct cache_index_dir {int kobj; struct cache* cache; } ;
struct cache {int ofnode; } ;
typedef scalar_t__ ssize_t ;


 int ARRAY_SIZE (struct kobj_attribute**) ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 struct kobj_attribute** cache_index_opt_attrs ;
 char* cache_type_string (struct cache*) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int pr_debug (char*,int ,int ,char const*,...) ;
 scalar_t__ stub1 (int *,struct kobj_attribute*,char*) ;
 scalar_t__ sysfs_create_file (int *,TYPE_1__*) ;

__attribute__((used)) static void cacheinfo_create_index_opt_attrs(struct cache_index_dir *dir)
{
 const char *cache_type;
 struct cache *cache;
 char *buf;
 int i;

 buf = kmalloc(PAGE_SIZE, GFP_KERNEL);
 if (!buf)
  return;

 cache = dir->cache;
 cache_type = cache_type_string(cache);






 for (i = 0; i < ARRAY_SIZE(cache_index_opt_attrs); i++) {
  struct kobj_attribute *attr;
  ssize_t rc;

  attr = cache_index_opt_attrs[i];

  rc = attr->show(&dir->kobj, attr, buf);
  if (rc <= 0) {
   pr_debug("not creating %s attribute for "
     "%pOF(%s) (rc = %zd)\n",
     attr->attr.name, cache->ofnode,
     cache_type, rc);
   continue;
  }
  if (sysfs_create_file(&dir->kobj, &attr->attr))
   pr_debug("could not create %s attribute for %pOF(%s)\n",
     attr->attr.name, cache->ofnode, cache_type);
 }

 kfree(buf);
}
