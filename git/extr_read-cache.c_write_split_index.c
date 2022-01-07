
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_file {int dummy; } ;
struct index_state {int dummy; } ;


 int do_write_locked_index (struct index_state*,struct lock_file*,unsigned int) ;
 int finish_writing_split_index (struct index_state*) ;
 int prepare_to_write_split_index (struct index_state*) ;

__attribute__((used)) static int write_split_index(struct index_state *istate,
        struct lock_file *lock,
        unsigned flags)
{
 int ret;
 prepare_to_write_split_index(istate);
 ret = do_write_locked_index(istate, lock, flags);
 finish_writing_split_index(istate);
 return ret;
}
