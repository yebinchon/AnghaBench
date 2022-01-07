
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; int len; } ;
typedef enum scld_error { ____Placeholder_scld_error } scld_error ;
typedef int (* create_file_fn ) (char const*,void*) ;


 int EISDIR ;
 int ENOENT ;
 int REMOVE_DIR_EMPTY_ONLY ;
 int SCLD_OK ;
 int SCLD_VANISHED ;
 struct strbuf STRBUF_INIT ;
 int assert (char const) ;
 int errno ;
 int remove_dir_recursively (struct strbuf*,int ) ;
 int safe_create_leading_directories (int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

int raceproof_create_file(const char *path, create_file_fn fn, void *cb)
{






 int remove_directories_remaining = 1;
 int create_directories_remaining = 3;


 struct strbuf path_copy = STRBUF_INIT;

 int ret, save_errno;


 assert(*path);

retry_fn:
 ret = fn(path, cb);
 save_errno = errno;
 if (!ret)
  goto out;

 if (errno == EISDIR && remove_directories_remaining-- > 0) {




  if (!path_copy.len)
   strbuf_addstr(&path_copy, path);

  if (!remove_dir_recursively(&path_copy, REMOVE_DIR_EMPTY_ONLY))
   goto retry_fn;
 } else if (errno == ENOENT && create_directories_remaining-- > 0) {






  enum scld_error scld_result;

  if (!path_copy.len)
   strbuf_addstr(&path_copy, path);

  do {
   scld_result = safe_create_leading_directories(path_copy.buf);
   if (scld_result == SCLD_OK)
    goto retry_fn;
  } while (scld_result == SCLD_VANISHED && create_directories_remaining-- > 0);
 }

out:
 strbuf_release(&path_copy);
 errno = save_errno;
 return ret;
}
