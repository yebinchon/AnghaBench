#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  cf_cmac ;
typedef  int /*<<< orphan*/  cf_aes_context ;
struct TYPE_3__ {size_t blocksz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__ cf_aes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,void const*,size_t) ; 

__attribute__((used)) static void FUNC5(const void *key, size_t nkey,
                       const void *msg, size_t nmsg,
                       const void *wanttag, size_t ntag)
{
  uint8_t gottag[16];

  FUNC0(cf_aes.blocksz == ntag);

  cf_aes_context aes;
  FUNC1(&aes, key, nkey);

  cf_cmac cmac;
  FUNC2(&cmac, &cf_aes, &aes);
  FUNC3(&cmac, msg, nmsg, gottag);

  FUNC0(FUNC4(gottag, wanttag, cf_aes.blocksz) == 0);
}