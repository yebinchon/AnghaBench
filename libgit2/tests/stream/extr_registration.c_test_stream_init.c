
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_stream ;


 int GIT_UNUSED (char const*) ;
 int ctor_called ;
 int test_stream ;

__attribute__((used)) static int test_stream_init(git_stream **out, const char *host, const char *port)
{
 GIT_UNUSED(host);
 GIT_UNUSED(port);

 ctor_called = 1;
 *out = &test_stream;

 return 0;
}
