
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lines; int pool; } ;
typedef TYPE_1__ patch_image ;


 int git_pool_clear (int *) ;
 int git_vector_free (int *) ;

__attribute__((used)) static void patch_image_free(patch_image *image)
{
 if (image == ((void*)0))
  return;

 git_pool_clear(&image->pool);
 git_vector_free(&image->lines);
}
