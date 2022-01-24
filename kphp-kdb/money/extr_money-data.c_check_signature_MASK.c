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
typedef  scalar_t__ money_auth_code_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 char FUNC4 (char,char) ; 

__attribute__((used)) static int FUNC5 (char auth_signature[32], char *temp, int L, money_auth_code_t code) {
  int i;
  if (!auth_signature) {
    return 0;
  }
  FUNC1 (temp + L, "%016llx", code);
  FUNC0 (temp, L + 16, temp + L + 16);
  FUNC3 (1, "in check_signature: md5_hex(%.*s)=%.32s, xor with %.32s\n", L+16, temp, temp+L+16, auth_signature);
  for (i = 0; i < 32; i++) {
    temp[L+16+i] = FUNC4 (temp[L+16+i], auth_signature[i]);
  }
  FUNC0 (temp + L + 16, 32, temp + L + 48);
  FUNC3 (1, "xor=%.32s, md5(xor)=%.16s\n", temp+L+16, temp+L+48);
  temp[L+64] = 0;
  return FUNC2 (temp + L + 48, 0, 16) == code; 
}