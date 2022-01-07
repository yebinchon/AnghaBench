
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {size_t len; int buf; } ;
struct path_hashmap_entry {int e; int path; } ;
struct merge_options {TYPE_1__* priv; } ;
struct TYPE_2__ {int current_file_dir_set; int call_depth; } ;


 int FLEX_ALLOC_MEM (struct path_hashmap_entry*,char const*,int ,size_t) ;
 struct strbuf STRBUF_INIT ;
 int add_flattened_path (struct strbuf*,char const*) ;
 scalar_t__ file_exists (int ) ;
 int hashmap_add (int *,int *) ;
 int hashmap_entry_init (int *,int ) ;
 scalar_t__ hashmap_get_from_hash (int *,int ,int ) ;
 int path_hash (int ) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_setlen (struct strbuf*,size_t) ;

__attribute__((used)) static char *unique_path(struct merge_options *opt,
    const char *path,
    const char *branch)
{
 struct path_hashmap_entry *entry;
 struct strbuf newpath = STRBUF_INIT;
 int suffix = 0;
 size_t base_len;

 strbuf_addf(&newpath, "%s~", path);
 add_flattened_path(&newpath, branch);

 base_len = newpath.len;
 while (hashmap_get_from_hash(&opt->priv->current_file_dir_set,
         path_hash(newpath.buf), newpath.buf) ||
        (!opt->priv->call_depth && file_exists(newpath.buf))) {
  strbuf_setlen(&newpath, base_len);
  strbuf_addf(&newpath, "_%d", suffix++);
 }

 FLEX_ALLOC_MEM(entry, path, newpath.buf, newpath.len);
 hashmap_entry_init(&entry->e, path_hash(entry->path));
 hashmap_add(&opt->priv->current_file_dir_set, &entry->e);
 return strbuf_detach(&newpath, ((void*)0));
}
