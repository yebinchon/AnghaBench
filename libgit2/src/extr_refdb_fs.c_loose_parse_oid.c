
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_buf ;


 int GIT_ERROR_REFERENCE ;
 scalar_t__ GIT_OID_HEXSZ ;
 scalar_t__ git__isspace (char const) ;
 char* git_buf_cstr (int *) ;
 scalar_t__ git_buf_len (int *) ;
 int git_error_set (int ,char*,char const*) ;
 scalar_t__ git_oid_fromstr (int *,char const*) ;

__attribute__((used)) static int loose_parse_oid(
 git_oid *oid, const char *filename, git_buf *file_content)
{
 const char *str = git_buf_cstr(file_content);

 if (git_buf_len(file_content) < GIT_OID_HEXSZ)
  goto corrupted;


 if (git_oid_fromstr(oid, str) < 0)
  goto corrupted;


 str += GIT_OID_HEXSZ;
 if (*str == '\0' || git__isspace(*str))
  return 0;

corrupted:
 git_error_set(GIT_ERROR_REFERENCE, "corrupted loose reference file: %s", filename);
 return -1;
}
