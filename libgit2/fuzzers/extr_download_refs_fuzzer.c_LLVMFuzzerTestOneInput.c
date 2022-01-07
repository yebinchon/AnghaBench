
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct fuzzer_buffer {unsigned char const* member_0; size_t member_1; } ;
struct TYPE_4__ {struct fuzzer_buffer* payload; int transport; } ;
typedef TYPE_1__ git_remote_callbacks ;
typedef int git_remote ;


 int GIT_DIRECTION_FETCH ;
 TYPE_1__ GIT_REMOTE_CALLBACKS_INIT ;
 int fuzzer_git_abort (char*) ;
 int fuzzer_transport_cb ;
 scalar_t__ git_remote_connect (int *,int ,TYPE_1__*,int *,int *) ;
 scalar_t__ git_remote_create_anonymous (int **,int ,char*) ;
 int git_remote_download (int *,int *,int *) ;
 int git_remote_free (int *) ;
 int repo ;

int LLVMFuzzerTestOneInput(const unsigned char *data, size_t size)
{
 struct fuzzer_buffer buffer = { data, size };
 git_remote_callbacks callbacks = GIT_REMOTE_CALLBACKS_INIT;
 git_remote *remote;

 if (git_remote_create_anonymous(&remote, repo, "fuzzer://remote-url") < 0)
  fuzzer_git_abort("git_remote_create");

 callbacks.transport = fuzzer_transport_cb;
 callbacks.payload = &buffer;

 if (git_remote_connect(remote, GIT_DIRECTION_FETCH,
     &callbacks, ((void*)0), ((void*)0)) < 0)
  goto out;

 git_remote_download(remote, ((void*)0), ((void*)0));

    out:
 git_remote_free(remote);

 return 0;
}
