
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULT_EDITOR ;
 char* editor_program ;
 char* getenv (char*) ;
 int is_terminal_dumb () ;

const char *git_editor(void)
{
 const char *editor = getenv("GIT_EDITOR");
 int terminal_is_dumb = is_terminal_dumb();

 if (!editor && editor_program)
  editor = editor_program;
 if (!editor && !terminal_is_dumb)
  editor = getenv("VISUAL");
 if (!editor)
  editor = getenv("EDITOR");

 if (!editor && terminal_is_dumb)
  return ((void*)0);

 if (!editor)
  editor = DEFAULT_EDITOR;

 return editor;
}
