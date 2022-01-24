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
typedef  int /*<<< orphan*/  cf_cbcmac_stream ;
typedef  int /*<<< orphan*/  cf_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cf_aes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,size_t) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,void const*,int) ; 

__attribute__((used)) static void FUNC6(const void *tag_expect, size_t ntag,
                          const void *key, size_t nkey,
                          const void *msg, size_t nmsg)
{
  uint8_t tag[16];

  cf_aes_context aes;
  FUNC1(&aes, key, nkey);

  cf_cbcmac_stream cm;
  FUNC2(&cm, &cf_aes, &aes);
  FUNC4(&cm, msg, nmsg);
  FUNC3(&cm, tag);

  FUNC0(sizeof tag == ntag);
  FUNC0(FUNC5(tag, tag_expect, sizeof tag) == 0);
}