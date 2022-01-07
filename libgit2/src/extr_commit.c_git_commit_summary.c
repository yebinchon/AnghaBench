
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* summary; } ;
typedef TYPE_1__ git_commit ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int assert (TYPE_1__*) ;
 scalar_t__ git__isspace (char) ;
 char const* git__strdup (char*) ;
 char const* git_buf_detach (int *) ;
 int git_buf_put (int *,char const*,int) ;
 int git_buf_putc (int *,char) ;
 char* git_commit_message (TYPE_1__*) ;

const char *git_commit_summary(git_commit *commit)
{
 git_buf summary = GIT_BUF_INIT;
 const char *msg, *space;
 bool space_contains_newline = 0;

 assert(commit);

 if (!commit->summary) {
  for (msg = git_commit_message(commit), space = ((void*)0); *msg; ++msg) {
   char next_character = msg[0];

   if (next_character == '\n' && (!msg[1] || msg[1] == '\n'))
    break;

   else if (git__isspace(next_character)) {
    if(space == ((void*)0)) {
     space = msg;
     space_contains_newline = 0;
    }
    space_contains_newline |= next_character == '\n';
   }

   else {

    if (space) {
     if(space_contains_newline)
      git_buf_putc(&summary, ' ');
     else
      git_buf_put(&summary, space, (msg - space));
     space = ((void*)0);
    }

    git_buf_putc(&summary, next_character);
   }
  }

  commit->summary = git_buf_detach(&summary);
  if (!commit->summary)
   commit->summary = git__strdup("");
 }

 return commit->summary;
}
