
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct stat {int st_mode; } ;


 scalar_t__ EEXIST ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ adjust_shared_perm (int ) ;
 scalar_t__ errno ;
 int finalize_object_file (int ,int ) ;
 int migrate_paths (struct strbuf*,struct strbuf*) ;
 int mkdir (int ,int) ;
 scalar_t__ stat (int ,struct stat*) ;

__attribute__((used)) static int migrate_one(struct strbuf *src, struct strbuf *dst)
{
 struct stat st;

 if (stat(src->buf, &st) < 0)
  return -1;
 if (S_ISDIR(st.st_mode)) {
  if (!mkdir(dst->buf, 0777)) {
   if (adjust_shared_perm(dst->buf))
    return -1;
  } else if (errno != EEXIST)
   return -1;
  return migrate_paths(src, dst);
 }
 return finalize_object_file(src->buf, dst->buf);
}
