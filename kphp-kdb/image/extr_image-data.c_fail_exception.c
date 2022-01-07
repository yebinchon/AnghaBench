
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct forth_stack {int dummy; } ;
struct TYPE_3__ {scalar_t__ severity; int description; int reason; } ;
typedef TYPE_1__ ExceptionInfo ;


 scalar_t__ UndefinedException ;
 int failf (struct forth_stack*,char*,int ,int ) ;

__attribute__((used)) static void fail_exception (struct forth_stack *st, ExceptionInfo *e_info) {
  if (e_info->severity != UndefinedException) {
    failf (st, "Magick: %s (%s).", e_info->reason, e_info->description);
  }
}
