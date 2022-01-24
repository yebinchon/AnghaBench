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
struct buff_file {int wptr; int wst; char* filename; int wpos; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int TEMP_WRITE_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int tmp_bytes_written ; 
 scalar_t__ verbosity ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 

void FUNC5 (struct buff_file *T) {
  int b = T->wptr - T->wst;
  if (!b) {
    T->wptr = T->wst;
    return;
  }
  FUNC0 (b > 0 && b <= TEMP_WRITE_BUFFER_SIZE);
  int a = FUNC4 (T->fd, T->wst, b);
  if (a < b) {
    if (a >= 0) {
      int c = FUNC4 (T->fd, T->wst + a, b - a);
      a = (c >= 0 ? a + c : c);
    }
  }
  if (a != b) {
    if (a < 0) {
      FUNC3 (stderr, "cannot write %d bytes to temporary file %s: %m\n", b, T->filename);
    } else {
      FUNC3 (stderr, "cannot write %d bytes to temporary file %s: only %d bytes written\n", b, T->filename, a);
    }
    FUNC1 (3);
    FUNC2 (3);
  }
  T->wpos += a;
  tmp_bytes_written += a;
  T->wptr = T->wst;
  if (verbosity > 0) {
    FUNC3 (stderr, "%d bytes written to temporary file %s\n", a, T->filename);
  }
}