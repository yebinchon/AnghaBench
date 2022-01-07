
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct merge_options {TYPE_1__* priv; } ;
struct cache_entry {int dummy; } ;
struct TYPE_4__ {int src_index; } ;
struct TYPE_3__ {TYPE_2__ unpack_opts; scalar_t__ call_depth; } ;


 int ignore_case ;
 struct cache_entry* index_file_exists (int ,char const*,int ,int ) ;
 int strlen (char const*) ;
 scalar_t__ verify_uptodate (struct cache_entry*,TYPE_2__*) ;
 int was_tracked (struct merge_options*,char const*) ;

__attribute__((used)) static int was_dirty(struct merge_options *opt, const char *path)
{
 struct cache_entry *ce;
 int dirty = 1;

 if (opt->priv->call_depth || !was_tracked(opt, path))
  return !dirty;

 ce = index_file_exists(opt->priv->unpack_opts.src_index,
          path, strlen(path), ignore_case);
 dirty = verify_uptodate(ce, &opt->priv->unpack_opts) != 0;
 return dirty;
}
