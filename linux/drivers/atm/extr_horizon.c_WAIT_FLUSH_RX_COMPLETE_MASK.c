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
typedef  int /*<<< orphan*/  hrz_dev ;

/* Variables and functions */
 int FLUSH_CHANNEL ; 
 int /*<<< orphan*/  RX_CHANNEL_PORT_OFF ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1 (hrz_dev * dev) {
  while (FUNC0 (dev, RX_CHANNEL_PORT_OFF) & FLUSH_CHANNEL)
    ;
  return;
}