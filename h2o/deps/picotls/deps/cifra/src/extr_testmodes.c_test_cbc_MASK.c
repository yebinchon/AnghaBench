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
typedef  int /*<<< orphan*/  cf_cbc ;
typedef  int /*<<< orphan*/  cf_aes_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cf_aes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,void const*,int) ; 

__attribute__((used)) static void FUNC6(void)
{
  uint8_t out[16];

  const void *iv =  "\x00\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0a\x0b\x0c\x0d\x0e\x0f";
  const void *key = "\x2b\x7e\x15\x16\x28\xae\xd2\xa6\xab\xf7\x15\x88\x09\xcf\x4f\x3c";
  const void *inp = "\x6b\xc1\xbe\xe2\x2e\x40\x9f\x96\xe9\x3d\x7e\x11\x73\x93\x17\x2a";
  const void *expect = "\x76\x49\xab\xac\x81\x19\xb2\x46\xce\xe9\x8e\x9b\x12\xe9\x19\x7d";

  cf_aes_context aes;
  FUNC1(&aes, key, 16);

  cf_cbc cbc;
  FUNC4(&cbc, &cf_aes, &aes, iv);
  FUNC3(&cbc, inp, out, 1);
  FUNC0(FUNC5(out, expect, 16) == 0);

  uint8_t decrypt[16];
  FUNC4(&cbc, &cf_aes, &aes, iv);
  FUNC2(&cbc, out, decrypt, 1);
  FUNC0(FUNC5(decrypt, inp, 16) == 0);
}