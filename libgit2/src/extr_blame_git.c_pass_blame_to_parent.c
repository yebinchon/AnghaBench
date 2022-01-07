
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mmfile_t ;
typedef int git_blame__origin ;
typedef int git_blame ;
struct TYPE_3__ {int plno; int tlno; int member_4; int member_3; int * member_2; int * member_1; int * member_0; } ;
typedef TYPE_1__ blame_chunk_cb_data ;


 scalar_t__ blame_chunk (int *,int ,int ,size_t,int *,int *) ;
 scalar_t__ diff_hunks (int ,int ,TYPE_1__*) ;
 int fill_origin_blob (int *,int *) ;
 int find_last_in_target (size_t*,int *,int *) ;

__attribute__((used)) static int pass_blame_to_parent(
  git_blame *blame,
  git_blame__origin *target,
  git_blame__origin *parent)
{
 size_t last_in_target;
 mmfile_t file_p, file_o;
 blame_chunk_cb_data d = { blame, target, parent, 0, 0 };

 if (!find_last_in_target(&last_in_target, blame, target))
  return 1;

 fill_origin_blob(parent, &file_p);
 fill_origin_blob(target, &file_o);

 if (diff_hunks(file_p, file_o, &d) < 0)
  return -1;


 if (blame_chunk(blame, d.tlno, d.plno, last_in_target, target, parent) < 0)
  return -1;

 return 0;
}
