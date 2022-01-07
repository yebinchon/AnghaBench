
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int merge_branch () ;
 int stage_random_files (char**) ;

__attribute__((used)) static int merge_staged_files(char *staged_files[])
{
 stage_random_files(staged_files);
 return merge_branch();
}
