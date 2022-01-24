#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  X; } ;
struct TYPE_8__ {scalar_t__ Y; scalar_t__ X; } ;
struct TYPE_9__ {TYPE_1__ dwSize; TYPE_2__ dwCursorPosition; } ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_2__ COORD ;
typedef  TYPE_3__ CONSOLE_SCREEN_BUFFER_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int,int /*<<< orphan*/ ,TYPE_2__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_3__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_2__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(void) {
  HANDLE handle;
  CONSOLE_SCREEN_BUFFER_INFO info;
  COORD coord;
  DWORD written;

  handle = (HANDLE)FUNC3(FUNC4(stderr));
  if (handle == INVALID_HANDLE_VALUE)
    return -1;

  if (!FUNC1(handle, &info))
    return -1;

  coord = info.dwCursorPosition;
  if (coord.Y <= 0)
    return -1;

  coord.X = 0;

  if (!FUNC2(handle, coord))
    return -1;

  if (!FUNC0(handle,
                                   0x20,
                                   info.dwSize.X,
                                   coord,
                                   &written)) {
    return -1;
  }

  return 0;
}