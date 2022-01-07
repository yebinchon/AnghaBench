
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct status_block {char* min_width_str; int pango_markup; int * short_text; int * full_text; scalar_t__ min_width; scalar_t__ urgent; } ;
struct TYPE_2__ {int has_urgent; int block; } ;
typedef TYPE_1__ parser_ctx ;
typedef int i3String ;


 int TAILQ_INSERT_TAIL (int *,struct status_block*,int ) ;
 int blocks ;
 int i3string_free (int *) ;
 void* i3string_from_utf8 (char*) ;
 int i3string_set_markup (int *,int ) ;
 int memcpy (struct status_block*,int *,int) ;
 scalar_t__ predict_text_width (int *) ;
 struct status_block* smalloc (int) ;
 int statusline_buffer ;

__attribute__((used)) static int stdin_end_map(void *context) {
    parser_ctx *ctx = context;
    struct status_block *new_block = smalloc(sizeof(struct status_block));
    memcpy(new_block, &(ctx->block), sizeof(struct status_block));


    if (!new_block->full_text)
        new_block->full_text = i3string_from_utf8("SPEC VIOLATION: full_text is NULL!");
    if (new_block->urgent)
        ctx->has_urgent = 1;

    if (new_block->min_width_str) {
        i3String *text = i3string_from_utf8(new_block->min_width_str);
        i3string_set_markup(text, new_block->pango_markup);
        new_block->min_width = (uint32_t)predict_text_width(text);
        i3string_free(text);
    }

    i3string_set_markup(new_block->full_text, new_block->pango_markup);

    if (new_block->short_text != ((void*)0))
        i3string_set_markup(new_block->short_text, new_block->pango_markup);

    TAILQ_INSERT_TAIL(&statusline_buffer, new_block, blocks);
    return 1;
}
