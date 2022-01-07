
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ git_diff_driver ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 TYPE_1__* git__calloc (int,size_t) ;
 int memcpy (int ,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int diff_driver_alloc(
 git_diff_driver **out, size_t *namelen_out, const char *name)
{
 git_diff_driver *driver;
 size_t driverlen = sizeof(git_diff_driver),
  namelen = strlen(name),
  alloclen;

 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, driverlen, namelen);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloclen, alloclen, 1);

 driver = git__calloc(1, alloclen);
 GIT_ERROR_CHECK_ALLOC(driver);

 memcpy(driver->name, name, namelen);

 *out = driver;

 if (namelen_out)
  *namelen_out = namelen;

 return 0;
}
