
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int collect_ambiguous (struct object_id const*,void*) ;

__attribute__((used)) static int repo_collect_ambiguous(struct repository *r,
      const struct object_id *oid,
      void *data)
{
 return collect_ambiguous(oid, data);
}
