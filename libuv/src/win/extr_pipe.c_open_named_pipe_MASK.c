#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  FILE_FLAG_OVERLAPPED ; 
 int FILE_READ_ATTRIBUTES ; 
 int FILE_WRITE_ATTRIBUTES ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int UV_HANDLE_READABLE ; 
 int UV_HANDLE_WRITABLE ; 

__attribute__((used)) static HANDLE FUNC2(const WCHAR* name, DWORD* duplex_flags) {
  HANDLE pipeHandle;

  /*
   * Assume that we have a duplex pipe first, so attempt to
   * connect with GENERIC_READ | GENERIC_WRITE.
   */
  pipeHandle = FUNC0(name,
                           GENERIC_READ | GENERIC_WRITE,
                           0,
                           NULL,
                           OPEN_EXISTING,
                           FILE_FLAG_OVERLAPPED,
                           NULL);
  if (pipeHandle != INVALID_HANDLE_VALUE) {
    *duplex_flags = UV_HANDLE_READABLE | UV_HANDLE_WRITABLE;
    return pipeHandle;
  }

  /*
   * If the pipe is not duplex CreateFileW fails with
   * ERROR_ACCESS_DENIED.  In that case try to connect
   * as a read-only or write-only.
   */
  if (FUNC1() == ERROR_ACCESS_DENIED) {
    pipeHandle = FUNC0(name,
                             GENERIC_READ | FILE_WRITE_ATTRIBUTES,
                             0,
                             NULL,
                             OPEN_EXISTING,
                             FILE_FLAG_OVERLAPPED,
                             NULL);

    if (pipeHandle != INVALID_HANDLE_VALUE) {
      *duplex_flags = UV_HANDLE_READABLE;
      return pipeHandle;
    }
  }

  if (FUNC1() == ERROR_ACCESS_DENIED) {
    pipeHandle = FUNC0(name,
                             GENERIC_WRITE | FILE_READ_ATTRIBUTES,
                             0,
                             NULL,
                             OPEN_EXISTING,
                             FILE_FLAG_OVERLAPPED,
                             NULL);

    if (pipeHandle != INVALID_HANDLE_VALUE) {
      *duplex_flags = UV_HANDLE_WRITABLE;
      return pipeHandle;
    }
  }

  return INVALID_HANDLE_VALUE;
}