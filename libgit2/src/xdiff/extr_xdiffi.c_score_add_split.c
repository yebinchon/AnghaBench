
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct split_score {int penalty; int effective_indent; } ;
struct split_measurement {int pre_indent; int pre_blank; int indent; int post_blank; int post_indent; scalar_t__ end_of_file; } ;


 scalar_t__ END_OF_FILE_PENALTY ;
 int POST_BLANK_WEIGHT ;
 scalar_t__ RELATIVE_DEDENT_PENALTY ;
 scalar_t__ RELATIVE_DEDENT_WITH_BLANK_PENALTY ;
 scalar_t__ RELATIVE_INDENT_PENALTY ;
 scalar_t__ RELATIVE_INDENT_WITH_BLANK_PENALTY ;
 scalar_t__ RELATIVE_OUTDENT_PENALTY ;
 scalar_t__ RELATIVE_OUTDENT_WITH_BLANK_PENALTY ;
 scalar_t__ START_OF_FILE_PENALTY ;
 int TOTAL_BLANK_WEIGHT ;

__attribute__((used)) static void score_add_split(const struct split_measurement *m, struct split_score *s)
{




 int post_blank, total_blank, indent, any_blanks;

 if (m->pre_indent == -1 && m->pre_blank == 0)
  s->penalty += START_OF_FILE_PENALTY;

 if (m->end_of_file)
  s->penalty += END_OF_FILE_PENALTY;





 post_blank = (m->indent == -1) ? 1 + m->post_blank : 0;
 total_blank = m->pre_blank + post_blank;


 s->penalty += TOTAL_BLANK_WEIGHT * total_blank;
 s->penalty += POST_BLANK_WEIGHT * post_blank;

 if (m->indent != -1)
  indent = m->indent;
 else
  indent = m->post_indent;

 any_blanks = (total_blank != 0);


 s->effective_indent += indent;

 if (indent == -1) {

 } else if (m->pre_indent == -1) {

 } else if (indent > m->pre_indent) {



  s->penalty += any_blanks ?
   RELATIVE_INDENT_WITH_BLANK_PENALTY :
   RELATIVE_INDENT_PENALTY;
 } else if (indent == m->pre_indent) {




 } else {







  if (m->post_indent != -1 && m->post_indent > indent) {




   s->penalty += any_blanks ?
    RELATIVE_OUTDENT_WITH_BLANK_PENALTY :
    RELATIVE_OUTDENT_PENALTY;
  } else {



   s->penalty += any_blanks ?
    RELATIVE_DEDENT_WITH_BLANK_PENALTY :
    RELATIVE_DEDENT_PENALTY;
  }
 }
}
