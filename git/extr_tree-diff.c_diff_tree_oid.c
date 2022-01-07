
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ follow_renames; } ;
struct diff_options {TYPE_1__ flags; } ;


 int PATH_MAX ;
 scalar_t__ diff_might_be_rename () ;
 int ll_diff_tree_oid (struct object_id const*,struct object_id const*,struct strbuf*,struct diff_options*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_init (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int try_to_follow_renames (struct object_id const*,struct object_id const*,struct strbuf*,struct diff_options*) ;

int diff_tree_oid(const struct object_id *old_oid,
    const struct object_id *new_oid,
    const char *base_str, struct diff_options *opt)
{
 struct strbuf base;
 int retval;

 strbuf_init(&base, PATH_MAX);
 strbuf_addstr(&base, base_str);

 retval = ll_diff_tree_oid(old_oid, new_oid, &base, opt);
 if (!*base_str && opt->flags.follow_renames && diff_might_be_rename())
  try_to_follow_renames(old_oid, new_oid, &base, opt);

 strbuf_release(&base);

 return retval;
}
