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
struct buff_file {int /*<<< orphan*/  fd; int /*<<< orphan*/  timestamp; scalar_t__ after_crc32; } ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int passes ; 
 struct buff_file* temp_file ; 
 int /*<<< orphan*/  FUNC2 (struct buff_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buff_file*) ; 
 int /*<<< orphan*/  FUNC4 (struct buff_file*,int /*<<< orphan*/ ) ; 

int FUNC5 (void) {
  int i;
  for (i = 0; i < passes; i++) {
    struct buff_file *T = &temp_file[i];
    FUNC2 (T, 0);
    if (T->after_crc32) {
      FUNC4 (T, T->timestamp);
    }
    FUNC3 (T);
    FUNC0 (FUNC1 (T->fd, 0, SEEK_SET) == 0);
  }
  return passes;
}