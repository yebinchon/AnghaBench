
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int warning (int ,char const*,char const*) ;

__attribute__((used)) static void warn_command_line_option(const char *var, const char *value)
{
 warning(_("ignoring '%s' which may be interpreted as"
    " a command-line option: %s"), var, value);
}
