
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_filter {int (* fn ) (char const*,struct object_id const*,int,int ) ;int cb_data; scalar_t__ prefix; int pattern; } ;
struct object_id {int dummy; } ;


 int skip_prefix (char const*,scalar_t__,char const**) ;
 int stub1 (char const*,struct object_id const*,int,int ) ;
 scalar_t__ wildmatch (int ,char const*,int ) ;

__attribute__((used)) static int filter_refs(const char *refname, const struct object_id *oid,
      int flags, void *data)
{
 struct ref_filter *filter = (struct ref_filter *)data;

 if (wildmatch(filter->pattern, refname, 0))
  return 0;
 if (filter->prefix)
  skip_prefix(refname, filter->prefix, &refname);
 return filter->fn(refname, oid, flags, filter->cb_data);
}
