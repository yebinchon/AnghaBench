#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  stdio_out; } ;
typedef  TYPE_1__ process_info_t ;
struct TYPE_7__ {size_t Offset; } ;
typedef  TYPE_2__ OVERLAPPED ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t INVALID_FILE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,size_t*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

int FUNC5(process_info_t *p,
                           char * buffer,
                           size_t buffer_len) {
  DWORD size;
  DWORD read;
  DWORD start;
  OVERLAPPED overlapped;

  FUNC0(buffer_len > 0);

  size = FUNC1(p->stdio_out, NULL);
  if (size == INVALID_FILE_SIZE)
    return -1;

  if (size == 0) {
    buffer[0] = '\0';
    return 1;
  }

  FUNC4(&overlapped, 0, sizeof overlapped);
  if (size >= buffer_len)
    overlapped.Offset = size - buffer_len - 1;

  if (!FUNC2(p->stdio_out, buffer, buffer_len - 1, &read, &overlapped))
    return -1;

  start = read;
  while (start-- > 0) {
    if (buffer[start] == '\n' || buffer[start] == '\r')
      break;
  }

  if (start > 0)
    FUNC3(buffer, buffer + start, read - start);

  buffer[read - start] = '\0';

  return 0;
}