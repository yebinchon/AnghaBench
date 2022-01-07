
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; } ;
struct TYPE_4__ {TYPE_1__ text; } ;
struct diff_words_data {scalar_t__ last_minus; char* current_plus; TYPE_2__ plus; } ;



__attribute__((used)) static int color_words_output_graph_prefix(struct diff_words_data *diff_words)
{
 if ((diff_words->last_minus == 0 &&
  diff_words->current_plus == diff_words->plus.text.ptr) ||
  (diff_words->current_plus > diff_words->plus.text.ptr &&
  *(diff_words->current_plus - 1) == '\n')) {
  return 1;
 } else {
  return 0;
 }
}
