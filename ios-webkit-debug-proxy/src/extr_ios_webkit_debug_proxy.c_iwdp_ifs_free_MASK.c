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
struct iwdp_ifs_struct {int dummy; } ;
typedef  scalar_t__ iwdp_ifs_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int) ; 

void FUNC2(iwdp_ifs_t ifs) {
  if (ifs) {
    FUNC1(ifs, 0, sizeof(struct iwdp_ifs_struct));
    FUNC0(ifs);
  }
}