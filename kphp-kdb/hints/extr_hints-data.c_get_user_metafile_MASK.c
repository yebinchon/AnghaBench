#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* metafile; int /*<<< orphan*/ * aio; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

inline char *FUNC3 (user *u) {
  if (u->aio != NULL || u->metafile == NULL) {
    return NULL;
  }

  FUNC2 (u);

  FUNC1 (u);
  FUNC0 (u);

  return u->metafile;
}