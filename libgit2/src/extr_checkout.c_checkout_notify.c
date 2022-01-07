
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wdfile ;
struct TYPE_14__ {char* path; int mode; int file_size; int id; } ;
typedef TYPE_2__ git_index_entry ;
struct TYPE_15__ {char* path; int mode; int flags; int size; int id; } ;
typedef TYPE_3__ git_diff_file ;
struct TYPE_16__ {int status; TYPE_3__ old_file; TYPE_3__ new_file; } ;
typedef TYPE_4__ git_diff_delta ;
typedef int git_checkout_notify_t ;
struct TYPE_13__ {int (* notify_cb ) (int,char const*,TYPE_3__ const*,TYPE_3__ const*,TYPE_3__ const*,int ) ;int notify_flags; int notify_payload; } ;
struct TYPE_17__ {TYPE_1__ opts; } ;
typedef TYPE_5__ checkout_data ;
 int GIT_DIFF_FLAG_VALID_ID ;
 int git_error_set_after_callback_function (int,char*) ;
 int git_oid_cpy (int *,int *) ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 (int,char const*,TYPE_3__ const*,TYPE_3__ const*,TYPE_3__ const*,int ) ;

__attribute__((used)) static int checkout_notify(
 checkout_data *data,
 git_checkout_notify_t why,
 const git_diff_delta *delta,
 const git_index_entry *wditem)
{
 git_diff_file wdfile;
 const git_diff_file *baseline = ((void*)0), *target = ((void*)0), *workdir = ((void*)0);
 const char *path = ((void*)0);

 if (!data->opts.notify_cb ||
  (why & data->opts.notify_flags) == 0)
  return 0;

 if (wditem) {
  memset(&wdfile, 0, sizeof(wdfile));

  git_oid_cpy(&wdfile.id, &wditem->id);
  wdfile.path = wditem->path;
  wdfile.size = wditem->file_size;
  wdfile.flags = GIT_DIFF_FLAG_VALID_ID;
  wdfile.mode = wditem->mode;

  workdir = &wdfile;

  path = wditem->path;
 }

 if (delta) {
  switch (delta->status) {
  case 130:
  case 132:
  case 131:
  default:
   baseline = &delta->old_file;
   target = &delta->new_file;
   break;
  case 135:
  case 133:
  case 128:
  case 129:
   target = &delta->new_file;
   break;
  case 134:
   baseline = &delta->old_file;
   break;
  }

  path = delta->old_file.path;
 }

 {
  int error = data->opts.notify_cb(
   why, path, baseline, target, workdir, data->opts.notify_payload);

  return git_error_set_after_callback_function(
   error, "git_checkout notification");
 }
}
