
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULT_PAGER ;
 int core_pager_config ;
 char* getenv (char*) ;
 char* pager_program ;
 int read_early_config (int ,int *) ;
 int strcmp (char const*,char*) ;

const char *git_pager(int stdout_is_tty)
{
 const char *pager;

 if (!stdout_is_tty)
  return ((void*)0);

 pager = getenv("GIT_PAGER");
 if (!pager) {
  if (!pager_program)
   read_early_config(core_pager_config, ((void*)0));
  pager = pager_program;
 }
 if (!pager)
  pager = getenv("PAGER");
 if (!pager)
  pager = DEFAULT_PAGER;
 if (!*pager || !strcmp(pager, "cat"))
  pager = ((void*)0);

 return pager;
}
