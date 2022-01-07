
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptrdiff_t ;


 char* char_replace (char*,char,char) ;
 int memmove (char*,char*,int) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *
parse_ios (char *agent, int tlen)
{
  char *p = ((void*)0), *q = ((void*)0);
  ptrdiff_t offset;

  p = agent;
  if ((p = strstr (agent, " OS ")) == ((void*)0))
    goto out;

  if ((offset = p - agent) <= 0)
    goto out;

  if ((q = strstr (p, " like Mac")) == ((void*)0))
    goto out;

  *q = 0;
  memmove (agent + tlen, agent + offset, offset);
  return char_replace (agent, '_', '.');

out:
  agent[tlen] = 0;
  return agent;
}
