
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; scalar_t__ blob; scalar_t__ odb_obj; } ;
typedef TYPE_1__ similarity_info ;


 int git_blob_free (scalar_t__) ;
 int git_buf_dispose (int *) ;
 int git_odb_object_free (scalar_t__) ;

__attribute__((used)) static void similarity_unload(similarity_info *info)
{
 if (info->odb_obj)
  git_odb_object_free(info->odb_obj);

 if (info->blob)
  git_blob_free(info->blob);
 else
  git_buf_dispose(&info->data);
}
