
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statusline_head {int dummy; } ;
struct status_block {int border; int background; int min_width_str; int instance; int name; int color; int short_text; int full_text; } ;


 int FREE (int ) ;
 int I3STRING_FREE (int ) ;
 int TAILQ_EMPTY (struct statusline_head*) ;
 struct status_block* TAILQ_FIRST (struct statusline_head*) ;
 int TAILQ_REMOVE (struct statusline_head*,struct status_block*,int ) ;
 int blocks ;
 int free (struct status_block*) ;

__attribute__((used)) static void clear_statusline(struct statusline_head *head, bool free_resources) {
    struct status_block *first;
    while (!TAILQ_EMPTY(head)) {
        first = TAILQ_FIRST(head);
        if (free_resources) {
            I3STRING_FREE(first->full_text);
            I3STRING_FREE(first->short_text);
            FREE(first->color);
            FREE(first->name);
            FREE(first->instance);
            FREE(first->min_width_str);
            FREE(first->background);
            FREE(first->border);
        }

        TAILQ_REMOVE(head, first, blocks);
        free(first);
    }
}
