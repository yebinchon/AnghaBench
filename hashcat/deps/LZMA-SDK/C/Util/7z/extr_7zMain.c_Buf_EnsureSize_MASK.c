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
struct TYPE_5__ {size_t size; } ;
typedef  TYPE_1__ CBuf ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_Alloc ; 

__attribute__((used)) static int FUNC2(CBuf *dest, size_t size)
{
  if (dest->size >= size)
    return 1;
  FUNC1(dest, &g_Alloc);
  return FUNC0(dest, size, &g_Alloc);
}