
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct merge_options {TYPE_1__* priv; } ;
struct diff_filespec {scalar_t__ mode; int oid; } ;
struct cache_entry {scalar_t__ ce_mode; int oid; } ;
struct TYPE_4__ {struct cache_entry** cache; } ;
struct TYPE_3__ {TYPE_2__ orig_index; } ;


 int index_name_pos (TYPE_2__*,char const*,int ) ;
 scalar_t__ oid_eq (int *,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static int was_tracked_and_matches(struct merge_options *opt, const char *path,
       const struct diff_filespec *blob)
{
 int pos = index_name_pos(&opt->priv->orig_index, path, strlen(path));
 struct cache_entry *ce;

 if (0 > pos)

  return 0;


 ce = opt->priv->orig_index.cache[pos];
 return (oid_eq(&ce->oid, &blob->oid) && ce->ce_mode == blob->mode);
}
