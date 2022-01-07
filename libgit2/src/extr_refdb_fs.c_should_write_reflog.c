
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_repository ;


 int GIT_CONFIGMAP_LOGALLREFUPDATES ;
 int GIT_HEAD_FILE ;



 int GIT_LOGALLREFUPDATES_UNSET ;
 int GIT_REFS_HEADS_DIR ;
 int GIT_REFS_NOTES_DIR ;
 int GIT_REFS_REMOTES_DIR ;
 int git__prefixcmp (char const*,int ) ;
 int git__strcmp (char const*,int ) ;
 int git_repository__configmap_lookup (int*,int *,int ) ;
 int git_repository_is_bare (int *) ;
 int has_reflog (int *,char const*) ;

__attribute__((used)) static int should_write_reflog(int *write, git_repository *repo, const char *name)
{
 int error, logall;

 error = git_repository__configmap_lookup(&logall, repo, GIT_CONFIGMAP_LOGALLREFUPDATES);
 if (error < 0)
  return error;


 if (logall == GIT_LOGALLREFUPDATES_UNSET)
  logall = !git_repository_is_bare(repo);

 *write = 0;
 switch (logall) {
 case 129:
  *write = 0;
  break;

 case 128:



  *write = has_reflog(repo, name) ||
   !git__prefixcmp(name, GIT_REFS_HEADS_DIR) ||
   !git__strcmp(name, GIT_HEAD_FILE) ||
   !git__prefixcmp(name, GIT_REFS_REMOTES_DIR) ||
   !git__prefixcmp(name, GIT_REFS_NOTES_DIR);
  break;

 case 130:
  *write = 1;
  break;
 }

 return 0;
}
