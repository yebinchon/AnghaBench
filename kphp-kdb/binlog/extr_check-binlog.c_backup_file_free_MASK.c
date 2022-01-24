#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* filename; struct TYPE_5__* next; } ;
typedef  TYPE_1__ backup_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3 (backup_file_t *F) {
  FUNC0 (F && F->filename);
  if (F->next) {
    FUNC3 (F->next);
    F->next = 0;
  }
  FUNC2 (F->filename, FUNC1 (F->filename) + 1);
  FUNC2 (F, sizeof (*F));
}