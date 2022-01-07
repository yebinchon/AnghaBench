
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;
typedef int git_oid ;
typedef int git_buf ;


 int GIT_OID_HEXSZ ;
 int find_unique_abbrev_size (int*,int *,int const*,unsigned int) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_printf (int *,char*,int) ;
 int git_buf_put (int *,char*,int) ;
 int git_oid_fmt (char*,int const*) ;

__attribute__((used)) static int show_suffix(
 git_buf *buf,
 int depth,
 git_repository *repo,
 const git_oid* id,
 unsigned int abbrev_size)
{
 int error, size = 0;

 char hex_oid[GIT_OID_HEXSZ];

 if ((error = find_unique_abbrev_size(&size, repo, id, abbrev_size)) < 0)
  return error;

 git_oid_fmt(hex_oid, id);

 git_buf_printf(buf, "-%d-g", depth);

 git_buf_put(buf, hex_oid, size);

 return git_buf_oom(buf) ? -1 : 0;
}
