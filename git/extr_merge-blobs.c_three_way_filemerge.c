
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct index_state {int dummy; } ;
typedef int mmfile_t ;
struct TYPE_3__ {unsigned long size; void* ptr; } ;
typedef TYPE_1__ mmbuffer_t ;


 int ll_merge (TYPE_1__*,char const*,int *,int *,int *,char*,int *,char*,struct index_state*,int *) ;

__attribute__((used)) static void *three_way_filemerge(struct index_state *istate,
     const char *path,
     mmfile_t *base,
     mmfile_t *our,
     mmfile_t *their,
     unsigned long *size)
{
 int merge_status;
 mmbuffer_t res;







 merge_status = ll_merge(&res, path, base, ((void*)0),
    our, ".our", their, ".their",
    istate, ((void*)0));
 if (merge_status < 0)
  return ((void*)0);

 *size = res.size;
 return res.ptr;
}
