
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;
struct fsck_options {int skiplist; } ;


 scalar_t__ oidset_contains (int *,int *) ;

__attribute__((used)) static int object_on_skiplist(struct fsck_options *opts, struct object *obj)
{
 return opts && obj && oidset_contains(&opts->skiplist, &obj->oid);
}
