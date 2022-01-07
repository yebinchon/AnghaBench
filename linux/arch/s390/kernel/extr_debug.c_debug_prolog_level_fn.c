
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct debug_view {int dummy; } ;
struct TYPE_3__ {scalar_t__ level; } ;
typedef TYPE_1__ debug_info_t ;


 scalar_t__ DEBUG_OFF_LEVEL ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int debug_prolog_level_fn(debug_info_t *id, struct debug_view *view,
     char *out_buf)
{
 int rc = 0;

 if (id->level == DEBUG_OFF_LEVEL)
  rc = sprintf(out_buf, "-\n");
 else
  rc = sprintf(out_buf, "%i\n", id->level);
 return rc;
}
