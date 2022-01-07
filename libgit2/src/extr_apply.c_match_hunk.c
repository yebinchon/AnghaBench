
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lines; } ;
typedef TYPE_1__ patch_image ;
struct TYPE_7__ {scalar_t__ content_len; int content; } ;
typedef TYPE_2__ git_diff_line ;


 TYPE_2__* git_vector_get (int *,size_t) ;
 size_t git_vector_length (int *) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static bool match_hunk(
 patch_image *image,
 patch_image *preimage,
 size_t linenum)
{
 bool match = 0;
 size_t i;


 if (git_vector_length(&preimage->lines) + linenum >
  git_vector_length(&image->lines))
  return 0;

 match = 1;


 for (i = 0; i < git_vector_length(&preimage->lines); i++) {
  git_diff_line *preimage_line = git_vector_get(&preimage->lines, i);
  git_diff_line *image_line = git_vector_get(&image->lines, linenum + i);

  if (preimage_line->content_len != image_line->content_len ||
   memcmp(preimage_line->content, image_line->content, image_line->content_len) != 0) {
   match = 0;
   break;
  }
 }

 return match;
}
