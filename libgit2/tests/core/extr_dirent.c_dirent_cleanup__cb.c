
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int path; int sub; TYPE_2__* names; } ;
typedef TYPE_1__ walk_data ;
struct TYPE_4__ {scalar_t__ name; } ;
typedef TYPE_2__ name_data ;


 int cl_must_pass (int ) ;
 int git_buf_dispose (int *) ;
 int p_chdir (char*) ;
 int p_rmdir (int ) ;
 int p_unlink (scalar_t__) ;
 scalar_t__ strcmp (int ,char*) ;
 int top_dir ;

__attribute__((used)) static void dirent_cleanup__cb(void *_d)
{
 walk_data *d = _d;
 name_data *n;

 for (n = d->names; n->name; n++) {
  cl_must_pass(p_unlink(n->name));
 }

 if (strcmp(d->sub, ".") != 0)
  cl_must_pass(p_rmdir(d->sub));

 cl_must_pass(p_chdir(".."));

 cl_must_pass(p_rmdir(top_dir));

 git_buf_dispose(&d->path);
}
