
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_UNUSED (int const*) ;

__attribute__((used)) static int foreach_stop_cb_positive_ret(const git_oid *oid, void *data)
{
 int *nobj = data;
 (*nobj)++;

 GIT_UNUSED(oid);

 return (*nobj == 1000) ? 321 : 0;
}
