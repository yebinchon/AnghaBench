
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ size; int ptr; } ;
typedef TYPE_1__ git_buf ;
struct TYPE_8__ {int init_sysdir; TYPE_1__ sysdir; } ;
typedef TYPE_2__ git_attr_session ;


 int GIT_ATTR_FILE_SYSTEM ;
 int GIT_ENOTFOUND ;
 int git_buf_attach_notowned (TYPE_1__*,int ,scalar_t__) ;
 int git_error_clear () ;
 int git_sysdir_find_system_file (TYPE_1__*,int ) ;

__attribute__((used)) static int system_attr_file(
 git_buf *out,
 git_attr_session *attr_session)
{
 int error;

 if (!attr_session) {
  error = git_sysdir_find_system_file(out, GIT_ATTR_FILE_SYSTEM);

  if (error == GIT_ENOTFOUND)
   git_error_clear();

  return error;
 }

 if (!attr_session->init_sysdir) {
  error = git_sysdir_find_system_file(&attr_session->sysdir, GIT_ATTR_FILE_SYSTEM);

  if (error == GIT_ENOTFOUND)
   git_error_clear();
  else if (error)
   return error;

  attr_session->init_sysdir = 1;
 }

 if (attr_session->sysdir.size == 0)
  return GIT_ENOTFOUND;





 git_buf_attach_notowned(
  out, attr_session->sysdir.ptr, attr_session->sysdir.size);
 return 0;
}
