
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct diff_queue_struct {int dummy; } ;
struct diff_filepair {TYPE_1__* one; TYPE_1__* two; int score; } ;
struct TYPE_5__ {int rename_used; } ;


 scalar_t__ DIFF_FILE_VALID (TYPE_1__*) ;
 int die (char*) ;
 int diff_free_filespec_data (TYPE_1__*) ;
 struct diff_filepair* diff_queue (struct diff_queue_struct*,TYPE_1__*,TYPE_1__*) ;
 int free (struct diff_filepair*) ;

__attribute__((used)) static void merge_broken(struct diff_filepair *p,
    struct diff_filepair *pp,
    struct diff_queue_struct *outq)
{

 struct diff_filepair *c = p, *d = pp, *dp;
 if (DIFF_FILE_VALID(p->one)) {

  d = p; c = pp;
 }

 if (!DIFF_FILE_VALID(d->one))
  die("internal error in merge #1");
 if (DIFF_FILE_VALID(d->two))
  die("internal error in merge #2");
 if (DIFF_FILE_VALID(c->one))
  die("internal error in merge #3");
 if (!DIFF_FILE_VALID(c->two))
  die("internal error in merge #4");

 dp = diff_queue(outq, d->one, c->two);
 dp->score = p->score;






 d->one->rename_used++;
 diff_free_filespec_data(d->two);
 diff_free_filespec_data(c->one);
 free(d);
 free(c);
}
