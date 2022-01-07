
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_queue_struct {int dummy; } ;
struct diff_filespec {int dummy; } ;
struct diff_filepair {struct diff_filespec* two; struct diff_filespec* one; } ;


 int diff_q (struct diff_queue_struct*,struct diff_filepair*) ;
 struct diff_filepair* xcalloc (int,int) ;

struct diff_filepair *diff_queue(struct diff_queue_struct *queue,
     struct diff_filespec *one,
     struct diff_filespec *two)
{
 struct diff_filepair *dp = xcalloc(1, sizeof(*dp));
 dp->one = one;
 dp->two = two;
 if (queue)
  diff_q(queue, dp);
 return dp;
}
