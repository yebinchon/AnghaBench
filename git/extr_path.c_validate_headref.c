
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct object_id {int dummy; } ;
typedef int ssize_t ;
typedef int buffer ;


 int O_RDONLY ;
 scalar_t__ S_ISLNK (int ) ;
 int close (int) ;
 int get_oid_hex (char*,struct object_id*) ;
 scalar_t__ isspace (char const) ;
 scalar_t__ lstat (char const*,struct stat*) ;
 int memcmp (char*,char*,int) ;
 int open (char const*,int ) ;
 int read_in_full (int,char*,int) ;
 int readlink (char const*,char*,int) ;
 scalar_t__ skip_prefix (char*,char*,char const**) ;
 scalar_t__ starts_with (char const*,char*) ;

int validate_headref(const char *path)
{
 struct stat st;
 char buffer[256];
 const char *refname;
 struct object_id oid;
 int fd;
 ssize_t len;

 if (lstat(path, &st) < 0)
  return -1;


 if (S_ISLNK(st.st_mode)) {
  len = readlink(path, buffer, sizeof(buffer)-1);
  if (len >= 5 && !memcmp("refs/", buffer, 5))
   return 0;
  return -1;
 }




 fd = open(path, O_RDONLY);
 if (fd < 0)
  return -1;
 len = read_in_full(fd, buffer, sizeof(buffer)-1);
 close(fd);

 if (len < 0)
  return -1;
 buffer[len] = '\0';




 if (skip_prefix(buffer, "ref:", &refname)) {
  while (isspace(*refname))
   refname++;
  if (starts_with(refname, "refs/"))
   return 0;
 }




 if (!get_oid_hex(buffer, &oid))
  return 0;

 return -1;
}
