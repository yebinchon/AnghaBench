
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct opts {int output; } ;
typedef int git_diff_stats_format_t ;
typedef int git_diff_stats ;
typedef int git_diff ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 TYPE_1__ GIT_BUF_INIT_CONST (int *,int ) ;
 int GIT_DIFF_STATS_FULL ;
 int GIT_DIFF_STATS_INCLUDE_SUMMARY ;
 int GIT_DIFF_STATS_NUMBER ;
 int GIT_DIFF_STATS_SHORT ;
 int OUTPUT_NUMSTAT ;
 int OUTPUT_SHORTSTAT ;
 int OUTPUT_STAT ;
 int OUTPUT_SUMMARY ;
 int check_lg2 (int ,char*,int *) ;
 int fputs (int ,int ) ;
 int git_buf_dispose (TYPE_1__*) ;
 int git_diff_get_stats (int **,int *) ;
 int git_diff_stats_free (int *) ;
 int git_diff_stats_to_buf (TYPE_1__*,int *,int ,int) ;
 int stdout ;

__attribute__((used)) static void diff_print_stats(git_diff *diff, struct opts *o)
{
 git_diff_stats *stats;
 git_buf b = GIT_BUF_INIT_CONST(((void*)0), 0);
 git_diff_stats_format_t format = 0;

 check_lg2(
  git_diff_get_stats(&stats, diff), "generating stats for diff", ((void*)0));

 if (o->output & OUTPUT_STAT)
  format |= GIT_DIFF_STATS_FULL;
 if (o->output & OUTPUT_SHORTSTAT)
  format |= GIT_DIFF_STATS_SHORT;
 if (o->output & OUTPUT_NUMSTAT)
  format |= GIT_DIFF_STATS_NUMBER;
 if (o->output & OUTPUT_SUMMARY)
  format |= GIT_DIFF_STATS_INCLUDE_SUMMARY;

 check_lg2(
  git_diff_stats_to_buf(&b, stats, format, 80), "formatting stats", ((void*)0));

 fputs(b.ptr, stdout);

 git_buf_dispose(&b);
 git_diff_stats_free(stats);
}
