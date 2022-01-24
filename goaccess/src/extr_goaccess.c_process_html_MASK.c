#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_9__ {int filenames_idx; char** filenames; scalar_t__ stop_processing; int /*<<< orphan*/  real_time_html; } ;
struct TYPE_8__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_7__ {int fd; int /*<<< orphan*/  mutex; } ;
struct TYPE_6__ {scalar_t__ load_from_disk_only; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_5__ conf ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 TYPE_4__ gdns_thread ; 
 TYPE_1__* glog ; 
 TYPE_2__* gwswriter ; 
 int /*<<< orphan*/  holder ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__* FUNC10 (int,int) ; 

__attribute__((used)) static void
FUNC11 (const char *filename)
{
  uint64_t *size1 = NULL;
  int i = 0;

  /* render report */
  FUNC6 (&gdns_thread.mutex);
  FUNC4 (glog, holder, filename);
  FUNC7 (&gdns_thread.mutex);
  /* not real time? */
  if (!conf.real_time_html)
    return;
  /* ignore loading from disk */
  if (glog->load_from_disk_only)
    return;

  FUNC6 (&gwswriter->mutex);
  gwswriter->fd = FUNC3 ();
  FUNC7 (&gwswriter->mutex);

  /* open fifo for write */
  if (gwswriter->fd == -1)
    return;

  size1 = FUNC10 (conf.filenames_idx, sizeof (uint64_t));
  for (i = 0; i < conf.filenames_idx; ++i) {
    if (conf.filenames[i][0] == '-' && conf.filenames[i][1] == '\0')
      size1[i] = 0;
    else
      size1[i] = FUNC1 (conf.filenames[i]);
  }

  FUNC8 ();
  while (1) {
    if (conf.stop_processing)
      break;

    for (i = 0; i < conf.filenames_idx; ++i)
      FUNC5 (&size1[i], conf.filenames[i]);       /* 0.2 secs */
    FUNC9 (800000);    /* 0.8 secs */
  }
  FUNC0 (gwswriter->fd);
  FUNC2 (size1);
}