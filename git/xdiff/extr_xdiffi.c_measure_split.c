
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long nrec; int * recs; } ;
typedef TYPE_1__ xdfile_t ;
struct split_measurement {int end_of_file; int indent; scalar_t__ pre_blank; int pre_indent; scalar_t__ post_blank; int post_indent; } ;


 scalar_t__ MAX_BLANKS ;
 void* get_indent (int ) ;

__attribute__((used)) static void measure_split(const xdfile_t *xdf, long split,
     struct split_measurement *m)
{
 long i;

 if (split >= xdf->nrec) {
  m->end_of_file = 1;
  m->indent = -1;
 } else {
  m->end_of_file = 0;
  m->indent = get_indent(xdf->recs[split]);
 }

 m->pre_blank = 0;
 m->pre_indent = -1;
 for (i = split - 1; i >= 0; i--) {
  m->pre_indent = get_indent(xdf->recs[i]);
  if (m->pre_indent != -1)
   break;
  m->pre_blank += 1;
  if (m->pre_blank == MAX_BLANKS) {
   m->pre_indent = 0;
   break;
  }
 }

 m->post_blank = 0;
 m->post_indent = -1;
 for (i = split + 1; i < xdf->nrec; i++) {
  m->post_indent = get_indent(xdf->recs[i]);
  if (m->post_indent != -1)
   break;
  m->post_blank += 1;
  if (m->post_blank == MAX_BLANKS) {
   m->post_indent = 0;
   break;
  }
 }
}
