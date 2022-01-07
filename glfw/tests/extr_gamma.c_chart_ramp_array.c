
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_context {int dummy; } ;
struct nk_color {int dummy; } ;
typedef int buffer ;


 int NK_CHART_LINES ;
 scalar_t__ nk_chart_begin_colored (struct nk_context*,int ,struct nk_color,int ,int,int ,int) ;
 int nk_chart_end (struct nk_context*) ;
 scalar_t__ nk_chart_push (struct nk_context*,unsigned short) ;
 int nk_rgb (int,int,int) ;
 int nk_tooltip (struct nk_context*,char*) ;
 int snprintf (char*,int,char*,int,unsigned short,unsigned short) ;

__attribute__((used)) static void chart_ramp_array(struct nk_context* nk,
                             struct nk_color color,
                             int count, unsigned short int* values)
{
    if (nk_chart_begin_colored(nk, NK_CHART_LINES,
                               color, nk_rgb(255, 255, 255),
                               count, 0, 65535))
    {
        int i;
        for (i = 0; i < count; i++)
        {
            char buffer[1024];
            if (nk_chart_push(nk, values[i]))
            {
                snprintf(buffer, sizeof(buffer), "#%u: %u (%0.5f) ",
                         i, values[i], values[i] / 65535.f);
                nk_tooltip(nk, buffer);
            }
        }

        nk_chart_end(nk);
    }
}
