#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int buflen; scalar_t__ payloadlen; int payload_offset; scalar_t__ reading; int /*<<< orphan*/  buf; } ;
typedef  TYPE_1__ WSFrame ;
struct TYPE_14__ {TYPE_1__* frame; } ;
typedef  TYPE_2__ WSClient ;
struct TYPE_15__ {scalar_t__ max_frm_size; } ;

/* Variables and functions */
 int WS_CLOSE ; 
 int /*<<< orphan*/  WS_CLOSE_TOO_LARGE ; 
 int WS_ERR ; 
 int WS_OK ; 
 int WS_READING ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_2__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int,int) ; 
 TYPE_3__ wsconfig ; 

__attribute__((used)) static int
FUNC8 (WSClient * client)
{
  WSFrame **frm = NULL;
  int bytes = 0, readh = 0, need = 0, offset = 0, extended = 0;

  if (client->frame == NULL)
    client->frame = FUNC0 ();

  frm = &client->frame;

  /* Read the first 2 bytes for basic frame info */
  readh = (*frm)->buflen;       /* read from header so far */
  need = 2 - readh;     /* need to read */
  if (need > 0) {
    if ((bytes = FUNC2 (client, (*frm), readh, need)) < 1)
      return bytes;
    if (bytes != need)
      return FUNC7 (client, WS_READING, bytes);
  }
  offset += 2;

  if (FUNC4 (client) != 0)
    return bytes;

  FUNC3 ((*frm)->buf, &extended);
  /* read the extended header */
  readh = (*frm)->buflen;       /* read from header so far */
  need = (extended + offset) - readh;   /* read from header field so far */
  if (need > 0) {
    if ((bytes = FUNC2 (client, (*frm), readh, need)) < 1)
      return bytes;
    if (bytes != need)
      return FUNC7 (client, WS_READING, bytes);
  }
  offset += extended;

  /* read the masking key */
  readh = (*frm)->buflen;       /* read from header so far */
  need = (4 + offset) - readh;
  if (need > 0) {
    if ((bytes = FUNC2 (client, (*frm), readh, need)) < 1)
      return bytes;
    if (bytes != need)
      return FUNC7 (client, WS_READING, bytes);
  }
  offset += 4;

  FUNC6 ((*frm), (*frm)->buf);
  FUNC5 ((*frm), (*frm)->buf);

  if ((*frm)->payloadlen > wsconfig.max_frm_size) {
    FUNC1 (client, WS_CLOSE_TOO_LARGE, "Frame is too big");
    return FUNC7 (client, WS_ERR | WS_CLOSE, bytes);
  }

  (*frm)->buflen = 0;
  (*frm)->reading = 0;
  (*frm)->payload_offset = offset;

  return FUNC7 (client, WS_OK, bytes);
}