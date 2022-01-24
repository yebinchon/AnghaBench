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
struct TYPE_4__ {int fd; } ;
typedef  TYPE_1__ WSPipeIn ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 

__attribute__((used)) static WSPipeIn *
FUNC1 (void)
{
  WSPipeIn *pipein = FUNC0 (1, sizeof (WSPipeIn));
  pipein->fd = -1;

  return pipein;
}