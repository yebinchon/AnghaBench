
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct TYPE_8__ {int oid; } ;
struct blob {TYPE_1__ object; } ;
struct TYPE_9__ {scalar_t__ size; int ptr; } ;
typedef TYPE_2__ mmfile_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 scalar_t__ fill_mmfile_blob (TYPE_2__*,struct blob*) ;
 int free_mmfile (TYPE_2__*) ;
 void* read_object_file (int *,int*,unsigned long*) ;
 void* three_way_filemerge (struct index_state*,char const*,TYPE_2__*,TYPE_2__*,TYPE_2__*,unsigned long*) ;
 int xstrdup (char*) ;

void *merge_blobs(struct index_state *istate, const char *path,
    struct blob *base, struct blob *our,
    struct blob *their, unsigned long *size)
{
 void *res = ((void*)0);
 mmfile_t f1, f2, common;
 if (!our || !their) {
  enum object_type type;
  if (base)
   return ((void*)0);
  if (!our)
   our = their;
  return read_object_file(&our->object.oid, &type, size);
 }

 if (fill_mmfile_blob(&f1, our) < 0)
  goto out_no_mmfile;
 if (fill_mmfile_blob(&f2, their) < 0)
  goto out_free_f1;

 if (base) {
  if (fill_mmfile_blob(&common, base) < 0)
   goto out_free_f2_f1;
 } else {
  common.ptr = xstrdup("");
  common.size = 0;
 }
 res = three_way_filemerge(istate, path, &common, &f1, &f2, size);
 free_mmfile(&common);
out_free_f2_f1:
 free_mmfile(&f2);
out_free_f1:
 free_mmfile(&f1);
out_no_mmfile:
 return res;
}
