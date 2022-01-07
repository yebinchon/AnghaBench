
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {TYPE_1__* dentry; } ;
struct TYPE_2__ {int d_flags; } ;


 int DCACHE_COOKIE ;
 int get_dcookie (struct path const*,unsigned long*) ;

__attribute__((used)) static inline unsigned long fast_get_dcookie(const struct path *path)
{
 unsigned long cookie;

 if (path->dentry->d_flags & DCACHE_COOKIE)
  return (unsigned long)path->dentry;
 get_dcookie(path, &cookie);
 return cookie;
}
