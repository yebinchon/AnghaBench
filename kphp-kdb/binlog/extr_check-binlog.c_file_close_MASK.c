#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* backups; scalar_t__ binlog; } ;
typedef  TYPE_1__ file_t ;
struct TYPE_5__ {int /*<<< orphan*/  S; struct TYPE_5__* next; } ;
typedef  TYPE_2__ backup_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2 (file_t *F) {
  FUNC0 (F->binlog, 1);
  F->binlog = 0;
  backup_file_t *f;
  for (f = F->backups; f != NULL; f = f->next) {
    FUNC1 (&f->S);
  }
}