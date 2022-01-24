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
struct raw_message {int dummy; } ;
typedef  int /*<<< orphan*/  SHA_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ SHA1_Update ; 
 int FUNC2 (struct raw_message*,int,void*,int /*<<< orphan*/ *) ; 

int FUNC3 (struct raw_message *raw, int bytes, unsigned char output[20]) {
  static SHA_CTX ctx;

  FUNC1 (&ctx);
  int res = FUNC2 (raw, bytes, (void *)SHA1_Update, &ctx);
  FUNC0 (output, &ctx);

  return res;
}