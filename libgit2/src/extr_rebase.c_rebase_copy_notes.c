
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int git_signature ;
struct TYPE_11__ {int state_path; } ;
typedef TYPE_1__ git_rebase ;
typedef int git_oid ;
struct TYPE_12__ {char* ptr; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_REBASE ;
 scalar_t__ GIT_OID_HEXSZ ;
 int REWRITTEN_FILE ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_joinpath (TYPE_2__*,int ,int ) ;
 int git_error_clear () ;
 int git_error_set (int ,char*,unsigned int) ;
 int git_futils_readbuffer (TYPE_2__*,char*) ;
 scalar_t__ git_oid_fromstr (int *,char*) ;
 int notes_ref_lookup (TYPE_2__*,TYPE_1__*) ;
 int rebase_copy_note (TYPE_1__*,char*,int *,int *,int const*) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int rebase_copy_notes(
 git_rebase *rebase,
 const git_signature *committer)
{
 git_buf path = GIT_BUF_INIT, rewritten = GIT_BUF_INIT, notes_ref = GIT_BUF_INIT;
 char *pair_list, *fromstr, *tostr, *end;
 git_oid from, to;
 unsigned int linenum = 1;
 int error = 0;

 if ((error = notes_ref_lookup(&notes_ref, rebase)) < 0) {
  if (error == GIT_ENOTFOUND) {
   git_error_clear();
   error = 0;
  }

  goto done;
 }

 if ((error = git_buf_joinpath(&path, rebase->state_path, REWRITTEN_FILE)) < 0 ||
  (error = git_futils_readbuffer(&rewritten, path.ptr)) < 0)
  goto done;

 pair_list = rewritten.ptr;

 while (*pair_list) {
  fromstr = pair_list;

  if ((end = strchr(fromstr, '\n')) == ((void*)0))
   goto on_error;

  pair_list = end+1;
  *end = '\0';

  if ((end = strchr(fromstr, ' ')) == ((void*)0))
   goto on_error;

  tostr = end+1;
  *end = '\0';

  if (strlen(fromstr) != GIT_OID_HEXSZ ||
   strlen(tostr) != GIT_OID_HEXSZ ||
   git_oid_fromstr(&from, fromstr) < 0 ||
   git_oid_fromstr(&to, tostr) < 0)
   goto on_error;

  if ((error = rebase_copy_note(rebase, notes_ref.ptr, &from, &to, committer)) < 0)
   goto done;

  linenum++;
 }

 goto done;

on_error:
 git_error_set(GIT_ERROR_REBASE, "invalid rewritten file at line %d", linenum);
 error = -1;

done:
 git_buf_dispose(&rewritten);
 git_buf_dispose(&path);
 git_buf_dispose(&notes_ref);

 return error;
}
