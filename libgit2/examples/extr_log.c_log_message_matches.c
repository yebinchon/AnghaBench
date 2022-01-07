
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_commit ;


 char* git_commit_message (int const*) ;
 int * strstr (char const*,char const*) ;

__attribute__((used)) static int log_message_matches(const git_commit *commit, const char *filter) {
 const char *message = ((void*)0);

 if (filter == ((void*)0))
  return 1;

 if ((message = git_commit_message(commit)) != ((void*)0) &&
  strstr(message, filter) != ((void*)0))
  return 1;

 return 0;
}
