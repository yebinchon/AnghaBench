
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_cmdline_info {unsigned int nr; TYPE_1__* rev; int alloc; } ;
struct rev_info {struct rev_cmdline_info cmdline; } ;
struct object {int dummy; } ;
struct TYPE_2__ {int whence; unsigned int flags; int name; struct object* item; } ;


 int ALLOC_GROW (TYPE_1__*,unsigned int,int ) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void add_rev_cmdline(struct rev_info *revs,
       struct object *item,
       const char *name,
       int whence,
       unsigned flags)
{
 struct rev_cmdline_info *info = &revs->cmdline;
 unsigned int nr = info->nr;

 ALLOC_GROW(info->rev, nr + 1, info->alloc);
 info->rev[nr].item = item;
 info->rev[nr].name = xstrdup(name);
 info->rev[nr].whence = whence;
 info->rev[nr].flags = flags;
 info->nr++;
}
