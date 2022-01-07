
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {char const* path; char const* name; } ;


 char* default_name_or_path (char const*) ;
 int memset (struct submodule*,int ,int) ;
 struct submodule* xmalloc (int) ;

__attribute__((used)) static const struct submodule *get_non_gitmodules_submodule(const char *path)
{
 struct submodule *ret = ((void*)0);
 const char *name = default_name_or_path(path);

 if (!name)
  return ((void*)0);

 ret = xmalloc(sizeof(*ret));
 memset(ret, 0, sizeof(*ret));
 ret->path = name;
 ret->name = name;

 return (const struct submodule *) ret;
}
