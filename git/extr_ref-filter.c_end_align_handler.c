
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int buf; } ;
struct ref_formatting_stack {TYPE_1__ output; scalar_t__ at_end_data; } ;
struct align {int width; int position; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_swap (TYPE_1__*,struct strbuf*) ;
 int strbuf_utf8_align (struct strbuf*,int ,int ,int ) ;

__attribute__((used)) static void end_align_handler(struct ref_formatting_stack **stack)
{
 struct ref_formatting_stack *cur = *stack;
 struct align *align = (struct align *)cur->at_end_data;
 struct strbuf s = STRBUF_INIT;

 strbuf_utf8_align(&s, align->position, align->width, cur->output.buf);
 strbuf_swap(&cur->output, &s);
 strbuf_release(&s);
}
