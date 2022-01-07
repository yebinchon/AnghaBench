
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int extend_abbrev_len (struct object_id const*,void*) ;

__attribute__((used)) static int repo_extend_abbrev_len(struct repository *r,
      const struct object_id *oid,
      void *cb_data)
{
 return extend_abbrev_len(oid, cb_data);
}
