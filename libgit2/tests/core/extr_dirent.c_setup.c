
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* names; int sub; int path; } ;
typedef TYPE_1__ walk_data ;
struct TYPE_6__ {scalar_t__ count; scalar_t__ name; } ;
typedef TYPE_2__ name_data ;
typedef scalar_t__ git_file ;


 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int cl_must_pass (int ) ;
 int git_buf_sets (int *,int ) ;
 int p_chdir (int ) ;
 int p_close (scalar_t__) ;
 scalar_t__ p_creat (scalar_t__,int) ;
 int p_mkdir (int ,int) ;
 TYPE_1__* state_loc ;
 scalar_t__ strcmp (int ,char*) ;
 int top_dir ;

__attribute__((used)) static void setup(walk_data *d)
{
 name_data *n;

 cl_must_pass(p_mkdir(top_dir, 0777));

 cl_must_pass(p_chdir(top_dir));

 if (strcmp(d->sub, ".") != 0)
  cl_must_pass(p_mkdir(d->sub, 0777));

 cl_git_pass(git_buf_sets(&d->path, d->sub));

 state_loc = d;

 for (n = d->names; n->name; n++) {
  git_file fd = p_creat(n->name, 0666);
  cl_assert(fd >= 0);
  p_close(fd);
  n->count = 0;
 }
}
