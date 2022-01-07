
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* progress_cb ) (int ,int,int ) ;int message_cb_payload; } ;
typedef TYPE_1__ transport_local ;
typedef int git_buf ;


 int GIT_BUF_INIT ;
 int GIT_PACKBUILDER_ADDING_OBJECTS ;
 int GIT_PACKBUILDER_DELTAFICATION ;
 int compressing_objects_fmt ;
 int counting_objects_fmt ;
 int git_buf_cstr (int *) ;
 int git_buf_dispose (int *) ;
 scalar_t__ git_buf_len (int *) ;
 scalar_t__ git_buf_oom (int *) ;
 int git_buf_printf (int *,char*,...) ;
 int git_buf_putc (int *,char) ;
 int stub1 (int ,int,int ) ;

__attribute__((used)) static int local_counting(int stage, unsigned int current, unsigned int total, void *payload)
{
 git_buf progress_info = GIT_BUF_INIT;
 transport_local *t = payload;
 int error;

 if (!t->progress_cb)
  return 0;

 if (stage == GIT_PACKBUILDER_ADDING_OBJECTS) {
  git_buf_printf(&progress_info, counting_objects_fmt, current);
 } else if (stage == GIT_PACKBUILDER_DELTAFICATION) {
  float perc = (((float) current) / total) * 100;
  git_buf_printf(&progress_info, compressing_objects_fmt, perc, current, total);
  if (current == total)
   git_buf_printf(&progress_info, ", done\n");
  else
   git_buf_putc(&progress_info, '\r');

 }

 if (git_buf_oom(&progress_info))
  return -1;

 error = t->progress_cb(git_buf_cstr(&progress_info), (int)git_buf_len(&progress_info), t->message_cb_payload);
 git_buf_dispose(&progress_info);

 return error;
}
