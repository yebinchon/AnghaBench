
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdfile_t ;
struct xdlgroup {long end; long start; } ;
struct split_score {int penalty; int effective_indent; int member_1; int member_0; } ;
struct split_measurement {int dummy; } ;


 long XDF_INDENT_HEURISTIC ;
 int group_init (int *,struct xdlgroup*) ;
 scalar_t__ group_next (int *,struct xdlgroup*) ;
 scalar_t__ group_previous (int *,struct xdlgroup*) ;
 scalar_t__ group_slide_down (int *,struct xdlgroup*,long) ;
 scalar_t__ group_slide_up (int *,struct xdlgroup*,long) ;
 int measure_split (int *,long,struct split_measurement*) ;
 int score_add_split (struct split_measurement*,struct split_score*) ;
 scalar_t__ score_cmp (struct split_score*,struct split_score*) ;
 int xdl_bug (char*) ;

int xdl_change_compact(xdfile_t *xdf, xdfile_t *xdfo, long flags) {
 struct xdlgroup g, go;
 long earliest_end, end_matching_other;
 long groupsize;

 group_init(xdf, &g);
 group_init(xdfo, &go);

 while (1) {

  if (g.end == g.start)
   goto next;





  do {
   groupsize = g.end - g.start;







   end_matching_other = -1;


   while (!group_slide_up(xdf, &g, flags))
    if (group_previous(xdfo, &go))
     xdl_bug("group sync broken sliding up");





   earliest_end = g.end;

   if (go.end > go.start)
    end_matching_other = g.end;


   while (1) {
    if (group_slide_down(xdf, &g, flags))
     break;
    if (group_next(xdfo, &go))
     xdl_bug("group sync broken sliding down");

    if (go.end > go.start)
     end_matching_other = g.end;
   }
  } while (groupsize != g.end - g.start);
  if (g.end == earliest_end) {

  } else if (end_matching_other != -1) {





   while (go.end == go.start) {
    if (group_slide_up(xdf, &g, flags))
     xdl_bug("match disappeared");
    if (group_previous(xdfo, &go))
     xdl_bug("group sync broken sliding to match");
   }
  } else if (flags & XDF_INDENT_HEURISTIC) {
   long shift, best_shift = -1;
   struct split_score best_score;

   for (shift = earliest_end; shift <= g.end; shift++) {
    struct split_measurement m;
    struct split_score score = {0, 0};

    measure_split(xdf, shift, &m);
    score_add_split(&m, &score);
    measure_split(xdf, shift - groupsize, &m);
    score_add_split(&m, &score);
    if (best_shift == -1 ||
        score_cmp(&score, &best_score) <= 0) {
     best_score.effective_indent = score.effective_indent;
     best_score.penalty = score.penalty;
     best_shift = shift;
    }
   }

   while (g.end > best_shift) {
    if (group_slide_up(xdf, &g, flags))
     xdl_bug("best shift unreached");
    if (group_previous(xdfo, &go))
     xdl_bug("group sync broken sliding to blank line");
   }
  }

 next:

  if (group_next(xdf, &g))
   break;
  if (group_next(xdfo, &go))
   xdl_bug("group sync broken moving to next group");
 }

 if (!group_next(xdfo, &go))
  xdl_bug("group sync broken at end of file");

 return 0;
}
