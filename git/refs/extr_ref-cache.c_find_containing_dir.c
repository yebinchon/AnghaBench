
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_dir {int dummy; } ;


 struct ref_dir* search_for_subdir (struct ref_dir*,char const*,size_t,int) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static struct ref_dir *find_containing_dir(struct ref_dir *dir,
        const char *refname, int mkdir)
{
 const char *slash;
 for (slash = strchr(refname, '/'); slash; slash = strchr(slash + 1, '/')) {
  size_t dirnamelen = slash - refname + 1;
  struct ref_dir *subdir;
  subdir = search_for_subdir(dir, refname, dirnamelen, mkdir);
  if (!subdir) {
   dir = ((void*)0);
   break;
  }
  dir = subdir;
 }

 return dir;
}
