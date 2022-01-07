
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ptr; } ;
typedef TYPE_1__ git_buf ;


 int GIT_ERROR_REFERENCE ;
 int GIT_SYMREF ;
 unsigned int const git_buf_len (TYPE_1__*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static const char *loose_parse_symbolic(git_buf *file_content)
{
 const unsigned int header_len = (unsigned int)strlen(GIT_SYMREF);
 const char *refname_start;

 refname_start = (const char *)file_content->ptr;

 if (git_buf_len(file_content) < header_len + 1) {
  git_error_set(GIT_ERROR_REFERENCE, "corrupted loose reference file");
  return ((void*)0);
 }





 refname_start += header_len;

 return refname_start;
}
