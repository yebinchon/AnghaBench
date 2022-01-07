
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int git_editor () ;
 int launch_specified_editor (int ,char const*,struct strbuf*,char const* const*) ;

int launch_editor(const char *path, struct strbuf *buffer, const char *const *env)
{
 return launch_specified_editor(git_editor(), path, buffer, env);
}
