
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int fetch; } ;
struct object_id {int dummy; } ;


 char* apply_refspecs (int *,char const*) ;
 scalar_t__ read_ref (char*,struct object_id*) ;

__attribute__((used)) static int remote_tracking(struct remote *remote, const char *refname,
      struct object_id *oid)
{
 char *dst;

 dst = apply_refspecs(&remote->fetch, refname);
 if (!dst)
  return -1;
 if (read_ref(dst, oid))
  return -1;
 return 0;
}
