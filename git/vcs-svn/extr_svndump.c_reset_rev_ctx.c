
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int note; int author; int log; scalar_t__ timestamp; int revision; } ;


 TYPE_1__ rev_ctx ;
 int strbuf_reset (int *) ;

__attribute__((used)) static void reset_rev_ctx(uint32_t revision)
{
 rev_ctx.revision = revision;
 rev_ctx.timestamp = 0;
 strbuf_reset(&rev_ctx.log);
 strbuf_reset(&rev_ctx.author);
 strbuf_reset(&rev_ctx.note);
}
