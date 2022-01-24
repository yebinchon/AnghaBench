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
struct vk_aes_ctx {int dummy; } ;
struct raw_message {int total_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct raw_message*) ; 
 int FUNC4 (struct raw_message*,int,struct vk_aes_ctx*,unsigned char*) ; 
 int FUNC5 (struct raw_message*,int,unsigned char*) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 

int FUNC7 (struct raw_message *msg, struct vk_aes_ctx *ctx, unsigned char *key) {
  if (msg->total_bytes & 15) {
    FUNC6 (1, "Length of encrypted part is not multiple of 16\n");
    return -1;
  }

  static unsigned char t[32];
  FUNC2 (t, key, 32);
  FUNC0 (!(msg->total_bytes & 15));
  if (verbosity >= 4) {
    FUNC3 (msg);
  }
  FUNC0 (FUNC4 (msg, msg->total_bytes, ctx, key) == msg->total_bytes);

  if (verbosity >= 4) {
    FUNC3 (msg);
  }

#ifdef USE_SHA1
  static unsigned char c[20];
  assert (rwm_sha1 (msg, msg->total_bytes, c) == msg->total_bytes);
  if (memcmp (c, t, 16)) {
    vkprintf (1, "Sha1 mismatch\n");
    return -1;
  }
#endif
  return 0;
}