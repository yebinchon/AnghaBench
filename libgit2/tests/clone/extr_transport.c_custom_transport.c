
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_transport ;
typedef int git_remote ;


 int git_transport_local (int **,int *,void*) ;

__attribute__((used)) static int custom_transport(
 git_transport **out,
 git_remote *owner,
 void *payload)
{
 *((int*)payload) = 1;

 return git_transport_local(out, owner, payload);
}
