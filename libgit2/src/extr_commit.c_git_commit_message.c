
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* raw_message; } ;
typedef TYPE_1__ git_commit ;


 int assert (TYPE_1__ const*) ;

const char *git_commit_message(const git_commit *commit)
{
 const char *message;

 assert(commit);

 message = commit->raw_message;


 while (*message && *message == '\n')
  ++message;

 return message;
}
