#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  colist; TYPE_2__* pipein; } ;
typedef  TYPE_1__ WSServer ;
struct TYPE_11__ {int hlen; char* hdr; int /*<<< orphan*/  fd; TYPE_3__* packet; } ;
typedef  TYPE_2__ WSPipeIn ;
struct TYPE_12__ {int size; char* data; int len; scalar_t__ type; } ;
typedef  TYPE_3__ WSPacket ;

/* Variables and functions */
 int HDR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__*) ; 
 int FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  ws_broadcast_fifo ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,TYPE_3__*) ; 
 void* FUNC9 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC10 (WSServer * server)
{
  WSPipeIn *pi = server->pipein;
  WSPacket **pa = &pi->packet;
  int bytes = 0, readh = 0, need = 0;

  char *ptr = NULL;
  uint32_t listener = 0, type = 0, size = 0;

  readh = pi->hlen;     /* read from header so far */
  need = HDR_SIZE - readh;      /* need to read */
  if (need > 0) {
    if ((bytes = FUNC7 (pi->fd, pi->hdr, &pi->hlen, readh, need)) < 0)
      return;
    if (bytes != need)
      return;
  }

  /* unpack size, and type */
  ptr = pi->hdr;
  ptr += FUNC4 (ptr, &listener);
  ptr += FUNC4 (ptr, &type);
  ptr += FUNC4 (ptr, &size);

  if (FUNC5 (listener, type, size) == 1) {
    FUNC1 (pi->fd);
    FUNC0 (pi);
    FUNC6 (pi);
    return;
  }

  if ((*pa) == NULL) {
    (*pa) = FUNC9 (1, sizeof (WSPacket));
    (*pa)->type = type;
    (*pa)->size = size;
    (*pa)->data = FUNC9 (size, sizeof (char));
  }

  readh = (*pa)->len;   /* read from payload so far */
  need = (*pa)->size - readh;   /* need to read */
  if (need > 0) {
    if ((bytes =
         FUNC7 (pi->fd, (*pa)->data, &(*pa)->len, readh, need)) < 0)
      return;
    if (bytes != need)
      return;
  }

  /* no clients to send data to */
  if (FUNC2 (server->colist) == 0) {
    FUNC0 (pi);
    return;
  }

  /* Either send it to a specific client or brodcast message to all
   * clients */
  if (listener != 0)
    FUNC8 (server, listener, *pa);
  else
    FUNC3 (server->colist, ws_broadcast_fifo, *pa);
  FUNC0 (pi);
}