#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * fp; struct TYPE_4__* path; } ;
typedef  TYPE_1__ source_file ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(mrb_state *mrb, source_file *file)
{
  if (file != NULL) {
    if (file->path != NULL) {
      FUNC1(mrb, file->path);
    }
    if (file->fp != NULL) {
      FUNC0(file->fp);
      file->fp = NULL;
    }
    FUNC1(mrb, file);
  }
}