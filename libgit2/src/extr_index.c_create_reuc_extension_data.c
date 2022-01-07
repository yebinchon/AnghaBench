
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {char* path; TYPE_1__* oid; scalar_t__* mode; } ;
typedef TYPE_2__ git_index_reuc_entry ;
typedef int git_buf ;
struct TYPE_4__ {int id; } ;


 int GIT_OID_RAWSZ ;
 int git_buf_printf (int *,char*,scalar_t__) ;
 int git_buf_put (int *,char*,int) ;
 int strlen (char*) ;

__attribute__((used)) static int create_reuc_extension_data(git_buf *reuc_buf, git_index_reuc_entry *reuc)
{
 int i;
 int error = 0;

 if ((error = git_buf_put(reuc_buf, reuc->path, strlen(reuc->path) + 1)) < 0)
  return error;

 for (i = 0; i < 3; i++) {
  if ((error = git_buf_printf(reuc_buf, "%o", reuc->mode[i])) < 0 ||
   (error = git_buf_put(reuc_buf, "\0", 1)) < 0)
   return error;
 }

 for (i = 0; i < 3; i++) {
  if (reuc->mode[i] && (error = git_buf_put(reuc_buf, (char *)&reuc->oid[i].id, GIT_OID_RAWSZ)) < 0)
   return error;
 }

 return 0;
}
