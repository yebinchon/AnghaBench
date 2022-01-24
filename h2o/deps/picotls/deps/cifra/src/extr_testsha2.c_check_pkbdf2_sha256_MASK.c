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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void const*,size_t,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cf_sha256 ; 
 scalar_t__ FUNC2 (void const*,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC3(const void *pw, size_t npw,
                                const void *salt, size_t nsalt,
                                uint32_t iters,
                                const void *expect, size_t nexpect)
{
  uint8_t output[64];

  FUNC1((const void *) pw, npw, 
                 (const void *) salt, nsalt,
                 iters,
                 output, nexpect,
                 &cf_sha256);

  FUNC0(FUNC2(expect, output, nexpect) == 0);
}