
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* GIT_USER_AGENT ;
 char* getenv (char*) ;

const char *git_user_agent(void)
{
 static const char *agent = ((void*)0);

 if (!agent) {
  agent = getenv("GIT_USER_AGENT");
  if (!agent)
   agent = GIT_USER_AGENT;
 }

 return agent;
}
