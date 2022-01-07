
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct opts {int diffopts; int * treeish2; int * treeish1; } ;
typedef int git_patch ;
typedef int git_diff ;
struct TYPE_4__ {int size; int ptr; int member_0; } ;
typedef TYPE_1__ git_buf ;


 int check_lg2 (int ,char*,int *) ;
 int free (char*) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_diff_from_buffer (int **,int ,int ) ;
 int git_patch_free (int *) ;
 int git_patch_from_buffers (int **,char*,int ,int *,char*,int ,int *,int *) ;
 int git_patch_to_buf (TYPE_1__*,int *) ;
 char* read_file (int *) ;
 int strlen (char*) ;
 int usage (char*,int *) ;

__attribute__((used)) static void compute_diff_no_index(git_diff **diff, struct opts *o) {
 git_patch *patch = ((void*)0);
 char *file1_str = ((void*)0);
 char *file2_str = ((void*)0);
 git_buf buf = {0};

 if (!o->treeish1 || !o->treeish2) {
  usage("two files should be provided as arguments", ((void*)0));
 }
 file1_str = read_file(o->treeish1);
 if (file1_str == ((void*)0)) {
  usage("file cannot be read", o->treeish1);
 }
 file2_str = read_file(o->treeish2);
 if (file2_str == ((void*)0)) {
  usage("file cannot be read", o->treeish2);
 }
 check_lg2(
  git_patch_from_buffers(&patch, file1_str, strlen(file1_str), o->treeish1, file2_str, strlen(file2_str), o->treeish2, &o->diffopts),
  "patch buffers", ((void*)0));
 check_lg2(
  git_patch_to_buf(&buf, patch),
  "patch to buf", ((void*)0));
 check_lg2(
  git_diff_from_buffer(diff, buf.ptr, buf.size),
  "diff from patch", ((void*)0));
 git_patch_free(patch);
 git_buf_dispose(&buf);
 free(file1_str);
 free(file2_str);
}
