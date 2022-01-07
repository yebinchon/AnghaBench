
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct debug_view {int dummy; } ;
struct TYPE_3__ {int pages_per_area; } ;
typedef TYPE_1__ debug_info_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static int debug_prolog_pages_fn(debug_info_t *id, struct debug_view *view,
     char *out_buf)
{
 return sprintf(out_buf, "%i\n", id->pages_per_area);
}
