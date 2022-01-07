
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct p_timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {struct timespec mtime; } ;
struct TYPE_7__ {TYPE_1__ stamp; int on_disk; } ;
typedef TYPE_2__ git_index ;


 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_index_path (TYPE_2__*) ;
 int git_index_read (TYPE_2__*,int) ;
 int p_utimes (int ,struct p_timeval*) ;

void tick_index(git_index *index)
{
 struct timespec ts;
 struct p_timeval times[2];

 cl_assert(index->on_disk);
 cl_assert(git_index_path(index));

 cl_git_pass(git_index_read(index, 1));
 ts = index->stamp.mtime;

 times[0].tv_sec = ts.tv_sec;
 times[0].tv_usec = ts.tv_nsec / 1000;
 times[1].tv_sec = ts.tv_sec + 5;
 times[1].tv_usec = ts.tv_nsec / 1000;

 cl_git_pass(p_utimes(git_index_path(index), times));
 cl_git_pass(git_index_read(index, 1));
}
