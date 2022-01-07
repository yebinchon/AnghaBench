
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct stat {int st_mode; } ;
struct ref_lock {int lk; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ commit_lock_file (int *) ;
 int free (char*) ;
 char* get_locked_file_path (int *) ;
 int lstat (char*,struct stat*) ;
 int remove_empty_directories (struct strbuf*) ;
 int strbuf_attach (struct strbuf*,char*,size_t,size_t) ;
 int strbuf_release (struct strbuf*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int commit_ref(struct ref_lock *lock)
{
 char *path = get_locked_file_path(&lock->lk);
 struct stat st;

 if (!lstat(path, &st) && S_ISDIR(st.st_mode)) {





  size_t len = strlen(path);
  struct strbuf sb_path = STRBUF_INIT;

  strbuf_attach(&sb_path, path, len, len);





  remove_empty_directories(&sb_path);
  strbuf_release(&sb_path);
 } else {
  free(path);
 }

 if (commit_lock_file(&lock->lk))
  return -1;
 return 0;
}
