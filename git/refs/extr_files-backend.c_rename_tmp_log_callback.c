
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rename_cb {scalar_t__ true_errno; int tmp_renamed_log; } ;


 scalar_t__ EISDIR ;
 scalar_t__ ENOTDIR ;
 scalar_t__ errno ;
 scalar_t__ rename (int ,char const*) ;

__attribute__((used)) static int rename_tmp_log_callback(const char *path, void *cb_data)
{
 struct rename_cb *cb = cb_data;

 if (rename(cb->tmp_renamed_log, path)) {







  cb->true_errno = errno;
  if (errno == ENOTDIR)
   errno = EISDIR;
  return -1;
 } else {
  return 0;
 }
}
