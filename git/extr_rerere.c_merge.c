
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct rerere_id {int dummy; } ;
struct index_state {int dummy; } ;
struct TYPE_6__ {int ptr; int member_1; int * member_0; } ;
typedef TYPE_1__ mmfile_t ;
struct TYPE_7__ {int ptr; int size; int member_1; int * member_0; } ;
typedef TYPE_2__ mmbuffer_t ;
typedef int FILE ;


 int _ (char*) ;
 int error_errno (int ,char const*) ;
 scalar_t__ fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (int ) ;
 int fwrite (int ,int ,int,int *) ;
 scalar_t__ handle_file (struct index_state*,char const*,int *,int ) ;
 scalar_t__ read_mmfile (TYPE_1__*,int ) ;
 int rerere_path (struct rerere_id const*,char*) ;
 int try_merge (struct index_state*,struct rerere_id const*,char const*,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ utime (int ,int *) ;
 int warning_errno (int ,int ) ;

__attribute__((used)) static int merge(struct index_state *istate, const struct rerere_id *id, const char *path)
{
 FILE *f;
 int ret;
 mmfile_t cur = {((void*)0), 0};
 mmbuffer_t result = {((void*)0), 0};





 if ((handle_file(istate, path, ((void*)0), rerere_path(id, "thisimage")) < 0) ||
     read_mmfile(&cur, rerere_path(id, "thisimage"))) {
  ret = 1;
  goto out;
 }

 ret = try_merge(istate, id, path, &cur, &result);
 if (ret)
  goto out;





 if (utime(rerere_path(id, "postimage"), ((void*)0)) < 0)
  warning_errno(_("failed utime() on '%s'"),
         rerere_path(id, "postimage"));


 f = fopen(path, "w");
 if (!f)
  return error_errno(_("could not open '%s'"), path);
 if (fwrite(result.ptr, result.size, 1, f) != 1)
  error_errno(_("could not write '%s'"), path);
 if (fclose(f))
  return error_errno(_("writing '%s' failed"), path);

out:
 free(cur.ptr);
 free(result.ptr);

 return ret;
}
