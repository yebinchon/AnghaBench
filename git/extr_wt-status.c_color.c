
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {char** color_palette; int use_color; } ;


 size_t WT_STATUS_HEADER ;
 int WT_STATUS_ONBRANCH ;
 scalar_t__ color_is_nil (char const*) ;
 scalar_t__ want_color (int ) ;

__attribute__((used)) static const char *color(int slot, struct wt_status *s)
{
 const char *c = "";
 if (want_color(s->use_color))
  c = s->color_palette[slot];
 if (slot == WT_STATUS_ONBRANCH && color_is_nil(c))
  c = s->color_palette[WT_STATUS_HEADER];
 return c;
}
