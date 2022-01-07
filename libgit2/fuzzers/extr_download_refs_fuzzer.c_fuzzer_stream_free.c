
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_smart_subtransport_stream ;


 int free (int *) ;

__attribute__((used)) static void fuzzer_stream_free(git_smart_subtransport_stream *stream)
{
 free(stream);
}
