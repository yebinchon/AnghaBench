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
typedef  int /*<<< orphan*/  uv_req_t ;
struct TYPE_12__ {int NumberOfHandles; TYPE_1__* Handles; } ;
struct TYPE_11__ {int submitted_events_1; unsigned char mask_events_1; int submitted_events_2; unsigned char mask_events_2; scalar_t__ events; int flags; int /*<<< orphan*/  (* poll_cb ) (TYPE_2__*,int /*<<< orphan*/ ,unsigned char) ;TYPE_3__ afd_poll_info_2; int /*<<< orphan*/  poll_req_2; TYPE_3__ afd_poll_info_1; int /*<<< orphan*/  poll_req_1; } ;
typedef  TYPE_2__ uv_poll_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;
struct TYPE_10__ {int Events; } ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_3__ AFD_POLL_INFO ;

/* Variables and functions */
 int AFD_POLL_ABORT ; 
 int AFD_POLL_ACCEPT ; 
 int AFD_POLL_CONNECT_FAIL ; 
 int AFD_POLL_DISCONNECT ; 
 int AFD_POLL_LOCAL_CLOSE ; 
 int AFD_POLL_RECEIVE ; 
 int AFD_POLL_SEND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned char UV_DISCONNECT ; 
 int UV_HANDLE_CLOSING ; 
 unsigned char UV_READABLE ; 
 unsigned char UV_WRITABLE ; 
 scalar_t__ WSAEINTR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(uv_loop_t* loop, uv_poll_t* handle,
    uv_req_t* req) {
  unsigned char mask_events;
  AFD_POLL_INFO* afd_poll_info;

  if (req == &handle->poll_req_1) {
    afd_poll_info = &handle->afd_poll_info_1;
    handle->submitted_events_1 = 0;
    mask_events = handle->mask_events_1;
  } else if (req == &handle->poll_req_2) {
    afd_poll_info = &handle->afd_poll_info_2;
    handle->submitted_events_2 = 0;
    mask_events = handle->mask_events_2;
  } else {
    FUNC2(0);
    return;
  }

  /* Report an error unless the select was just interrupted. */
  if (!FUNC1(req)) {
    DWORD error = FUNC0(req);
    if (error != WSAEINTR && handle->events != 0) {
      handle->events = 0; /* Stop the watcher */
      handle->poll_cb(handle, FUNC8(error), 0);
    }

  } else if (afd_poll_info->NumberOfHandles >= 1) {
    unsigned char events = 0;

    if ((afd_poll_info->Handles[0].Events & (AFD_POLL_RECEIVE |
        AFD_POLL_DISCONNECT | AFD_POLL_ACCEPT | AFD_POLL_ABORT)) != 0) {
      events |= UV_READABLE;
      if ((afd_poll_info->Handles[0].Events & AFD_POLL_DISCONNECT) != 0) {
        events |= UV_DISCONNECT;
      }
    }
    if ((afd_poll_info->Handles[0].Events & (AFD_POLL_SEND |
        AFD_POLL_CONNECT_FAIL)) != 0) {
      events |= UV_WRITABLE;
    }

    events &= handle->events & ~mask_events;

    if (afd_poll_info->Handles[0].Events & AFD_POLL_LOCAL_CLOSE) {
      /* Stop polling. */
      handle->events = 0;
      if (FUNC7(handle))
        FUNC6(handle);
    }

    if (events != 0) {
      handle->poll_cb(handle, 0, events);
    }
  }

  if ((handle->events & ~(handle->submitted_events_1 |
      handle->submitted_events_2)) != 0) {
    FUNC5(loop, handle);
  } else if ((handle->flags & UV_HANDLE_CLOSING) &&
             handle->submitted_events_1 == 0 &&
             handle->submitted_events_2 == 0) {
    FUNC9(loop, (uv_handle_t*) handle);
  }
}