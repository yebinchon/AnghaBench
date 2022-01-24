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

/* Variables and functions */
 int FILE_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,void const*,int) ; 
 scalar_t__ obuff ; 
 scalar_t__ roptr ; 
 scalar_t__ woptr ; 
 int wpos ; 

__attribute__((used)) static void FUNC3 (const void *data, int size) {
  int len;
  FUNC0 ((unsigned) size < FILE_BUFFER_SIZE * 8);
  if (!woptr) { woptr = roptr = obuff; }
  while (size > 0) {
    len = obuff + FILE_BUFFER_SIZE - woptr;
    if (len > size) { len = size; }
    FUNC0 (len > 0);
    FUNC2 (woptr, data, len);
    data = ((char *) data) + len;
    woptr += len;
    size -= len;
    wpos += len;
    if (woptr == obuff + FILE_BUFFER_SIZE) {
      FUNC1();
    }
  }
}