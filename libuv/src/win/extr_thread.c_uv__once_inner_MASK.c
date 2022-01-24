#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ran; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ uv_once_t ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8(uv_once_t* guard, void (*callback)(void)) {
  DWORD result;
  HANDLE existing_event, created_event;

  created_event = FUNC1(NULL, 1, 0, NULL);
  if (created_event == 0) {
    /* Could fail in a low-memory situation? */
    FUNC7(FUNC2(), "CreateEvent");
  }

  existing_event = FUNC3(&guard->event,
                                                     created_event,
                                                     NULL);

  if (existing_event == NULL) {
    /* We won the race */
    callback();

    result = FUNC4(created_event);
    FUNC6(result);
    guard->ran = 1;

  } else {
    /* We lost the race. Destroy the event we created and wait for the existing
     * one to become signaled. */
    FUNC0(created_event);
    result = FUNC5(existing_event, INFINITE);
    FUNC6(result == WAIT_OBJECT_0);
  }
}