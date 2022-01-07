
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_9__ {int filenames_idx; char** filenames; scalar_t__ stop_processing; int real_time_html; } ;
struct TYPE_8__ {int mutex; } ;
struct TYPE_7__ {int fd; int mutex; } ;
struct TYPE_6__ {scalar_t__ load_from_disk_only; } ;


 int close (int) ;
 TYPE_5__ conf ;
 scalar_t__ file_size (char*) ;
 int free (scalar_t__*) ;
 TYPE_4__ gdns_thread ;
 TYPE_1__* glog ;
 TYPE_2__* gwswriter ;
 int holder ;
 int open_fifoin () ;
 int output_html (TYPE_1__*,int ,char const*) ;
 int perform_tail_follow (scalar_t__*,char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int set_ready_state () ;
 int usleep (int) ;
 scalar_t__* xcalloc (int,int) ;

__attribute__((used)) static void
process_html (const char *filename)
{
  uint64_t *size1 = ((void*)0);
  int i = 0;


  pthread_mutex_lock (&gdns_thread.mutex);
  output_html (glog, holder, filename);
  pthread_mutex_unlock (&gdns_thread.mutex);

  if (!conf.real_time_html)
    return;

  if (glog->load_from_disk_only)
    return;

  pthread_mutex_lock (&gwswriter->mutex);
  gwswriter->fd = open_fifoin ();
  pthread_mutex_unlock (&gwswriter->mutex);


  if (gwswriter->fd == -1)
    return;

  size1 = xcalloc (conf.filenames_idx, sizeof (uint64_t));
  for (i = 0; i < conf.filenames_idx; ++i) {
    if (conf.filenames[i][0] == '-' && conf.filenames[i][1] == '\0')
      size1[i] = 0;
    else
      size1[i] = file_size (conf.filenames[i]);
  }

  set_ready_state ();
  while (1) {
    if (conf.stop_processing)
      break;

    for (i = 0; i < conf.filenames_idx; ++i)
      perform_tail_follow (&size1[i], conf.filenames[i]);
    usleep (800000);
  }
  close (gwswriter->fd);
  free (size1);
}
