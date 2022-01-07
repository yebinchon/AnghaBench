
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct path_hashmap_entry {int e; int path; } ;
struct object_id {int dummy; } ;
struct merge_options {TYPE_1__* priv; } ;
struct TYPE_2__ {int current_file_dir_set; } ;


 int FLEX_ALLOC_MEM (struct path_hashmap_entry*,char const*,int ,int) ;
 int READ_TREE_RECURSIVE ;
 scalar_t__ S_ISDIR (unsigned int) ;
 int hashmap_add (int *,int *) ;
 int hashmap_entry_init (int *,int ) ;
 int path_hash (int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_setlen (struct strbuf*,int) ;

__attribute__((used)) static int save_files_dirs(const struct object_id *oid,
      struct strbuf *base, const char *path,
      unsigned int mode, int stage, void *context)
{
 struct path_hashmap_entry *entry;
 int baselen = base->len;
 struct merge_options *opt = context;

 strbuf_addstr(base, path);

 FLEX_ALLOC_MEM(entry, path, base->buf, base->len);
 hashmap_entry_init(&entry->e, path_hash(entry->path));
 hashmap_add(&opt->priv->current_file_dir_set, &entry->e);

 strbuf_setlen(base, baselen);
 return (S_ISDIR(mode) ? READ_TREE_RECURSIVE : 0);
}
