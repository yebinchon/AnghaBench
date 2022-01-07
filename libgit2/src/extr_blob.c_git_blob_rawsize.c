
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_off_t ;
struct TYPE_6__ {int size; } ;
struct TYPE_7__ {int odb; TYPE_1__ raw; } ;
struct TYPE_8__ {TYPE_2__ data; scalar_t__ raw; } ;
typedef TYPE_3__ git_blob ;


 int assert (TYPE_3__ const*) ;
 int git_odb_object_size (int ) ;

git_off_t git_blob_rawsize(const git_blob *blob)
{
 assert(blob);
 if (blob->raw)
  return blob->data.raw.size;
 else
  return (git_off_t)git_odb_object_size(blob->data.odb);
}
