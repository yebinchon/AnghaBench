#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  fd_set ;
struct TYPE_5__ {int type; int size; char* data; int len; } ;
typedef  TYPE_1__ WSPacket ;
struct TYPE_6__ {int fd; int* self_pipe; int hlen; char* hdr; TYPE_1__* packet; } ;
typedef  TYPE_2__ GWSReader ;

/* Variables and functions */
#define  EINTR 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int HDR_SIZE ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int errno ; 
 int FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 void FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int*) ; 
 int FUNC11 (int,char*,int*,int,int) ; 
 void* FUNC12 (int,int) ; 

int
FUNC13 (GWSReader * gwsreader, fd_set rfds, fd_set wfds, void (*f) (int))
{
  WSPacket **pa = &gwsreader->packet;
  char *ptr;
  int bytes = 0, readh = 0, need = 0, fd = gwsreader->fd, max = 0;
  uint32_t listener = 0, type = 0, size = 0;

  FUNC3 (&rfds);
  FUNC3 (&wfds);
  /* self-pipe trick to stop the event loop */
  FUNC2 (gwsreader->self_pipe[0], &rfds);
  /* fifo */
  FUNC2 (fd, &rfds);
  max = FUNC5 (fd, gwsreader->self_pipe[0]);

  if (FUNC7 (max + 1, &rfds, &wfds, NULL, NULL) == -1) {
    switch (errno) {
    case EINTR:
      break;
    default:
      FUNC0 ("Unable to select: %s.", FUNC8 (errno));
    }
  }
  /* handle self-pipe trick */
  if (FUNC1 (gwsreader->self_pipe[0], &rfds))
    return 1;
  if (!FUNC1 (fd, &rfds)) {
    FUNC4 (("No file descriptor set on read_message()\n"));
    return 0;
  }

  readh = gwsreader->hlen;      /* read from header so far */
  need = HDR_SIZE - readh;      /* need to read */
  if (need > 0) {
    if ((bytes =
         FUNC11 (fd, gwsreader->hdr, &gwsreader->hlen, readh, need)) < 0)
      return 0;
    if (bytes != need)
      return 0;
  }

  /* unpack size, and type */
  ptr = gwsreader->hdr;
  ptr += FUNC10 (ptr, &listener);
  ptr += FUNC10 (ptr, &type);
  ptr += FUNC10 (ptr, &size);

  if ((*pa) == NULL) {
    (*pa) = FUNC12 (1, sizeof (WSPacket));
    (*pa)->type = type;
    (*pa)->size = size;
    (*pa)->data = FUNC12 (size, sizeof (char));
  }

  readh = (*pa)->len;   /* read from payload so far */
  need = (*pa)->size - readh;   /* need to read */
  if (need > 0) {
    if ((bytes = FUNC11 (fd, (*pa)->data, &(*pa)->len, readh, need)) < 0)
      return 0;
    if (bytes != need)
      return 0;
  }
  FUNC6 (gwsreader);
  /* fast forward JSON data to the given client */
  (*f) (listener);

  return 0;
}