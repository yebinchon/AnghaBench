
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 int git_config_get_string_const (char*,char const**) ;
 char* git_editor () ;

const char *git_sequence_editor(void)
{
 const char *editor = getenv("GIT_SEQUENCE_EDITOR");

 if (!editor)
  git_config_get_string_const("sequence.editor", &editor);
 if (!editor)
  editor = git_editor();

 return editor;
}
