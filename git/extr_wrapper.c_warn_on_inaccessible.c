
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int warning_errno (int ,char const*) ;

__attribute__((used)) static void warn_on_inaccessible(const char *path)
{
 warning_errno(_("unable to access '%s'"), path);
}
