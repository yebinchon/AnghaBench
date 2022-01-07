
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int odb; } ;
struct TYPE_5__ {TYPE_1__ data; int raw; } ;
typedef TYPE_2__ git_blob ;


 int git__free (TYPE_2__*) ;
 int git_odb_object_free (int ) ;

void git_blob__free(void *_blob)
{
 git_blob *blob = (git_blob *) _blob;
 if (!blob->raw)
  git_odb_object_free(blob->data.odb);
 git__free(blob);
}
