
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int lines; } ;
typedef TYPE_1__ patch_image ;


 size_t git_vector_length (int *) ;
 int match_hunk (TYPE_1__*,TYPE_1__*,size_t) ;

__attribute__((used)) static bool find_hunk_linenum(
 size_t *out,
 patch_image *image,
 patch_image *preimage,
 size_t linenum)
{
 size_t max = git_vector_length(&image->lines);
 bool match;

 if (linenum > max)
  linenum = max;

 match = match_hunk(image, preimage, linenum);

 *out = linenum;
 return match;
}
