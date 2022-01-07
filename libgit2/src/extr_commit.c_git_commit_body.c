
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* body; } ;
typedef TYPE_1__ git_commit ;


 int assert (TYPE_1__*) ;
 int git__isspace (char const) ;
 char const* git__strndup (char const*,int) ;
 char* git_commit_message (TYPE_1__*) ;
 int strlen (char const*) ;

const char *git_commit_body(git_commit *commit)
{
 const char *msg, *end;

 assert(commit);

 if (!commit->body) {

  for (msg = git_commit_message(commit); *msg; ++msg)
   if (msg[0] == '\n' && (!msg[1] || msg[1] == '\n'))
    break;


  for (; *msg; ++msg)
   if (!git__isspace(*msg))
    break;
  for (end = msg + strlen(msg) - 1; msg <= end; --end)
   if (!git__isspace(*end))
    break;

  if (*msg)
   commit->body = git__strndup(msg, end - msg + 1);
 }

 return commit->body;
}
