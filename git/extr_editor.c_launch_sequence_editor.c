
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int git_sequence_editor () ;
 int launch_specified_editor (int ,char const*,struct strbuf*,char const* const*) ;

int launch_sequence_editor(const char *path, struct strbuf *buffer,
      const char *const *env)
{
 return launch_specified_editor(git_sequence_editor(), path, buffer, env);
}
