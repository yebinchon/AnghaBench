
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lock_file {TYPE_2__* tempfile; } ;
struct index_state {scalar_t__ updated_skipworktree; scalar_t__ updated_workdir; } ;
struct TYPE_3__ {int buf; } ;
struct TYPE_4__ {TYPE_1__ filename; } ;


 unsigned int COMMIT_LOCK ;
 int close_lock_file_gently (struct lock_file*) ;
 int commit_locked_index (struct lock_file*) ;
 int do_write_index (struct index_state*,TYPE_2__*,int ) ;
 int run_hook_le (int *,char*,char*,char*,int *) ;
 int the_repository ;
 int trace2_region_enter_printf (char*,char*,int ,char*,int ) ;
 int trace2_region_leave_printf (char*,char*,int ,char*,int ) ;

__attribute__((used)) static int do_write_locked_index(struct index_state *istate, struct lock_file *lock,
     unsigned flags)
{
 int ret;





 trace2_region_enter_printf("index", "do_write_index", the_repository,
       "%s", lock->tempfile->filename.buf);
 ret = do_write_index(istate, lock->tempfile, 0);
 trace2_region_leave_printf("index", "do_write_index", the_repository,
       "%s", lock->tempfile->filename.buf);

 if (ret)
  return ret;
 if (flags & COMMIT_LOCK)
  ret = commit_locked_index(lock);
 else
  ret = close_lock_file_gently(lock);

 run_hook_le(((void*)0), "post-index-change",
   istate->updated_workdir ? "1" : "0",
   istate->updated_skipworktree ? "1" : "0", ((void*)0));
 istate->updated_workdir = 0;
 istate->updated_skipworktree = 0;

 return ret;
}
