
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ umode_t ;
struct device {int dummy; } ;
typedef int kuid_t ;
typedef int kgid_t ;


 int handle_create (char const*,scalar_t__,int ,int ,struct device*) ;
 int handle_remove (char const*,struct device*) ;

__attribute__((used)) static int handle(const char *name, umode_t mode, kuid_t uid, kgid_t gid,
    struct device *dev)
{
 if (mode)
  return handle_create(name, mode, uid, gid, dev);
 else
  return handle_remove(name, dev);
}
