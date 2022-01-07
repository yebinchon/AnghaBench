
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct api_info {scalar_t__ refcnt; scalar_t__ minor; scalar_t__ major; int group; } ;


 int sun4v_set_version (int ,int ,int ,unsigned long*) ;

__attribute__((used)) static void __put_ref(struct api_info *p)
{
 if (--p->refcnt == 0) {
  unsigned long ignore;

  sun4v_set_version(p->group, 0, 0, &ignore);
  p->major = p->minor = 0;
 }
}
