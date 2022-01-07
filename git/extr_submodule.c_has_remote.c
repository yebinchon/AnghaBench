
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;



__attribute__((used)) static int has_remote(const char *refname, const struct object_id *oid,
        int flags, void *cb_data)
{
 return 1;
}
