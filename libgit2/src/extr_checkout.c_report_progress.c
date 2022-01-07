
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int progress_payload; int (* progress_cb ) (char const*,int ,int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ opts; int total_steps; int completed_steps; } ;
typedef TYPE_2__ checkout_data ;


 int stub1 (char const*,int ,int ,int ) ;

__attribute__((used)) static void report_progress(
 checkout_data *data,
 const char *path)
{
 if (data->opts.progress_cb)
  data->opts.progress_cb(
   path, data->completed_steps, data->total_steps,
   data->opts.progress_payload);
}
