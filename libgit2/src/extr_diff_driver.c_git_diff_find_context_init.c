
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int line; int match_line; TYPE_2__* driver; } ;
typedef TYPE_1__ git_diff_find_context_payload ;
typedef int * git_diff_find_context_fn ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_2__ git_diff_driver ;


 scalar_t__ DIFF_DRIVER_PATTERNLIST ;
 int * diff_context_find ;
 int diff_context_line__pattern_match ;
 int diff_context_line__simple ;
 int git_buf_init (int *,int ) ;
 int memset (TYPE_1__*,int ,int) ;

void git_diff_find_context_init(
 git_diff_find_context_fn *findfn_out,
 git_diff_find_context_payload *payload_out,
 git_diff_driver *driver)
{
 *findfn_out = driver ? diff_context_find : ((void*)0);

 memset(payload_out, 0, sizeof(*payload_out));
 if (driver) {
  payload_out->driver = driver;
  payload_out->match_line = (driver->type == DIFF_DRIVER_PATTERNLIST) ?
   diff_context_line__pattern_match : diff_context_line__simple;
  git_buf_init(&payload_out->line, 0);
 }
}
