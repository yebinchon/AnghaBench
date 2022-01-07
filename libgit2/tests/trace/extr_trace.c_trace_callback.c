
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_trace_level_t ;


 int GIT_UNUSED (int ) ;
 int cl_assert (int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int written ;

__attribute__((used)) static void trace_callback(git_trace_level_t level, const char *message)
{
 GIT_UNUSED(level);

 cl_assert(strcmp(message, "Hello world!") == 0);

 written = 1;
}
