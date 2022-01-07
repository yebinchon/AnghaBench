
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int dummy; } ;


 int emit_line_0 (struct diff_options*,char const*,int *,int ,char const*,int ,char const*,int) ;

__attribute__((used)) static void emit_line(struct diff_options *o, const char *set, const char *reset,
        const char *line, int len)
{
 emit_line_0(o, set, ((void*)0), 0, reset, 0, line, len);
}
