
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int MAP_PRIVATE ;
 int PROT_READ ;
 int _ (char*) ;
 int close (int) ;
 int error (int ,char const*) ;
 int fstat (int,struct stat*) ;
 int git_open (char const*) ;
 int open_loose_object (struct repository*,struct object_id const*,char const**) ;
 void* xmmap (int *,unsigned long,int ,int ,int,int ) ;
 unsigned long xsize_t (int ) ;

__attribute__((used)) static void *map_loose_object_1(struct repository *r, const char *path,
        const struct object_id *oid, unsigned long *size)
{
 void *map;
 int fd;

 if (path)
  fd = git_open(path);
 else
  fd = open_loose_object(r, oid, &path);
 map = ((void*)0);
 if (fd >= 0) {
  struct stat st;

  if (!fstat(fd, &st)) {
   *size = xsize_t(st.st_size);
   if (!*size) {

    error(_("object file %s is empty"), path);
    close(fd);
    return ((void*)0);
   }
   map = xmmap(((void*)0), *size, PROT_READ, MAP_PRIVATE, fd, 0);
  }
  close(fd);
 }
 return map;
}
