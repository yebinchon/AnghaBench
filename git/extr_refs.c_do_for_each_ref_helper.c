
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct do_for_each_ref_help {int (* fn ) (char const*,struct object_id const*,int,int ) ;int cb_data; } ;


 int stub1 (char const*,struct object_id const*,int,int ) ;

__attribute__((used)) static int do_for_each_ref_helper(struct repository *r,
      const char *refname,
      const struct object_id *oid,
      int flags,
      void *cb_data)
{
 struct do_for_each_ref_help *hp = cb_data;

 return hp->fn(refname, oid, flags, hp->cb_data);
}
