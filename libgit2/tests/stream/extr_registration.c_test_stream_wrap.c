
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const git_stream ;


 int GIT_UNUSED (char const*) ;
 int ctor_called ;
 char test_stream ;

__attribute__((used)) static int test_stream_wrap(git_stream **out, git_stream *in, const char *host)
{
 GIT_UNUSED(in);
 GIT_UNUSED(host);

 ctor_called = 1;
 *out = &test_stream;

 return 0;
}
