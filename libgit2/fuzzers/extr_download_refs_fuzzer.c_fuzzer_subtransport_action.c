
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuzzer_subtransport {int data; } ;
struct fuzzer_stream {int dummy; } ;
typedef int git_smart_subtransport_stream ;
typedef int git_smart_subtransport ;
typedef char const* git_smart_service_t ;


 int UNUSED (char const*) ;
 int fuzzer_stream_new (struct fuzzer_stream**,int *) ;

__attribute__((used)) static int fuzzer_subtransport_action(
 git_smart_subtransport_stream **out,
 git_smart_subtransport *transport,
 const char *url,
 git_smart_service_t action)
{
 struct fuzzer_subtransport *ft = (struct fuzzer_subtransport *) transport;

 UNUSED(url);
 UNUSED(action);

 return fuzzer_stream_new((struct fuzzer_stream **) out, &ft->data);
}
