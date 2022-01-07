
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_diff_delta ;
typedef void git_diff_binary ;


 int GIT_UNUSED (void*) ;

int diff_binary_cb(
 const git_diff_delta *delta,
 const git_diff_binary *binary,
 void *payload)
{
 GIT_UNUSED(delta);
 GIT_UNUSED(binary);
 GIT_UNUSED(payload);

 return 0;
}
