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
struct buffered_logevent {void* data; } ;
typedef  int lev_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,int*,int) ; 

void *FUNC3 (struct buffered_logevent *L, lev_type_t type, int size) {
  size = (size + 3) & -4;
  FUNC0 (size >= 4);
  L->data = FUNC1 (size + 8, 1);
  FUNC0 (L->data != NULL);
  FUNC2 (L->data, &size, 4);
  FUNC2 (L->data + 8, &type, 4);
  return L->data + 8;
}