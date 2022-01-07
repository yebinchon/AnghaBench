
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROMPT_ASKPASS ;
 int PROMPT_ECHO ;
 char* askpass_program ;
 int die (char*,char const*,char const*) ;
 char* do_askpass (char const*,char const*) ;
 int errno ;
 char* getenv (char*) ;
 scalar_t__ git_env_bool (char*,int) ;
 char* git_terminal_prompt (char const*,int) ;
 char* strerror (int ) ;

char *git_prompt(const char *prompt, int flags)
{
 char *r = ((void*)0);

 if (flags & PROMPT_ASKPASS) {
  const char *askpass;

  askpass = getenv("GIT_ASKPASS");
  if (!askpass)
   askpass = askpass_program;
  if (!askpass)
   askpass = getenv("SSH_ASKPASS");
  if (askpass && *askpass)
   r = do_askpass(askpass, prompt);
 }

 if (!r) {
  const char *err;

  if (git_env_bool("GIT_TERMINAL_PROMPT", 1)) {
   r = git_terminal_prompt(prompt, flags & PROMPT_ECHO);
   err = strerror(errno);
  } else {
   err = "terminal prompts disabled";
  }
  if (!r) {

   die("could not read %s%s", prompt, err);
  }
 }
 return r;
}
