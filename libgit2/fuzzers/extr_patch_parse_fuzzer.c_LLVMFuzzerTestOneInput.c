
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ prefix_len; } ;
typedef TYPE_1__ git_patch_options ;
typedef int git_patch ;


 TYPE_1__ GIT_PATCH_OPTIONS_INIT ;
 int git_patch_free (int *) ;
 int git_patch_from_buffer (int **,char const*,size_t,TYPE_1__*) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
 if (size) {
  git_patch *patch = ((void*)0);
  git_patch_options opts = GIT_PATCH_OPTIONS_INIT;
  opts.prefix_len = (uint32_t)data[0];
  git_patch_from_buffer(&patch, (const char *)data + 1, size - 1,
                        &opts);
  git_patch_free(patch);
 }
 return 0;
}
