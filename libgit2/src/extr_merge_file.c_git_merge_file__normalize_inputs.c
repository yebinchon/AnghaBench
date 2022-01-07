
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* path; int mode; } ;
typedef TYPE_1__ git_merge_file_input ;


 int memcpy (TYPE_1__*,TYPE_1__ const*,int) ;

__attribute__((used)) static git_merge_file_input *git_merge_file__normalize_inputs(
 git_merge_file_input *out,
 const git_merge_file_input *given)
{
 memcpy(out, given, sizeof(git_merge_file_input));

 if (!out->path)
  out->path = "file.txt";

 if (!out->mode)
  out->mode = 0100644;

 return out;
}
