
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ptr; } ;
struct TYPE_4__ {int names; TYPE_2__ path; } ;
typedef TYPE_1__ walk_data ;
typedef TYPE_2__ git_buf ;


 int GIT_ERROR ;
 void* state_loc ;
 int update_count (int ,int ) ;

__attribute__((used)) static int one_entry(void *state, git_buf *path)
{
 walk_data *d = (walk_data *) state;

 if (state != state_loc)
  return GIT_ERROR;

 if (path != &d->path)
  return GIT_ERROR;

 return update_count(d->names, path->ptr);
}
