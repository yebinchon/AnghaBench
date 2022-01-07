
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct rerere_id {int dummy; } ;
struct index_state {int dummy; } ;
struct TYPE_7__ {int ptr; int member_1; int * member_0; } ;
typedef TYPE_1__ mmfile_t ;
typedef int mmbuffer_t ;


 int free (int ) ;
 int ll_merge (int *,char const*,TYPE_1__*,int *,TYPE_1__*,char*,TYPE_1__*,char*,struct index_state*,int *) ;
 scalar_t__ read_mmfile (TYPE_1__*,int ) ;
 int rerere_path (struct rerere_id const*,char*) ;

__attribute__((used)) static int try_merge(struct index_state *istate,
       const struct rerere_id *id, const char *path,
       mmfile_t *cur, mmbuffer_t *result)
{
 int ret;
 mmfile_t base = {((void*)0), 0}, other = {((void*)0), 0};

 if (read_mmfile(&base, rerere_path(id, "preimage")) ||
     read_mmfile(&other, rerere_path(id, "postimage")))
  ret = 1;
 else




  ret = ll_merge(result, path, &base, ((void*)0), cur, "", &other, "",
          istate, ((void*)0));

 free(base.ptr);
 free(other.ptr);

 return ret;
}
