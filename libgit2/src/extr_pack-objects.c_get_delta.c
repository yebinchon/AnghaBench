
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t delta_size; int id; TYPE_1__* delta; } ;
typedef TYPE_2__ git_pobject ;
typedef int git_odb_object ;
typedef int git_odb ;
struct TYPE_4__ {int id; } ;


 int GIT_EBUFS ;
 int GIT_ERROR_INVALID ;
 int git_delta (void**,size_t*,int ,int ,int ,int ,int ) ;
 int git_error_set (int ,char*) ;
 int git_odb_object_data (int *) ;
 int git_odb_object_free (int *) ;
 int git_odb_object_size (int *) ;
 scalar_t__ git_odb_read (int **,int *,int *) ;

__attribute__((used)) static int get_delta(void **out, git_odb *odb, git_pobject *po)
{
 git_odb_object *src = ((void*)0), *trg = ((void*)0);
 size_t delta_size;
 void *delta_buf;
 int error;

 *out = ((void*)0);

 if (git_odb_read(&src, odb, &po->delta->id) < 0 ||
     git_odb_read(&trg, odb, &po->id) < 0)
  goto on_error;

 error = git_delta(&delta_buf, &delta_size,
  git_odb_object_data(src), git_odb_object_size(src),
  git_odb_object_data(trg), git_odb_object_size(trg),
  0);

 if (error < 0 && error != GIT_EBUFS)
  goto on_error;

 if (error == GIT_EBUFS || delta_size != po->delta_size) {
  git_error_set(GIT_ERROR_INVALID, "delta size changed");
  goto on_error;
 }

 *out = delta_buf;

 git_odb_object_free(src);
 git_odb_object_free(trg);
 return 0;

on_error:
 git_odb_object_free(src);
 git_odb_object_free(trg);
 return -1;
}
