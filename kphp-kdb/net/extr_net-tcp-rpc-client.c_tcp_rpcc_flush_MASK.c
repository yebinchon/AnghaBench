#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  out; TYPE_1__* type; scalar_t__ crypto; } ;
struct TYPE_2__ {int (* crypto_needed_output_bytes ) (struct connection*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC2 (struct connection*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int) ; 

int FUNC4 (struct connection *c) {
  if (c->crypto) {
    int pad_bytes = c->type->crypto_needed_output_bytes (c);
    FUNC3 (2, "rpcs_flush: padding with %d bytes\n", pad_bytes);
    if (pad_bytes > 0) {
      FUNC0 (!(pad_bytes & 3));
      static int pad_str[3] = {4, 4, 4};
      FUNC0 (pad_bytes <= 12);
      FUNC0 (FUNC1 (&c->out, pad_str, pad_bytes) == pad_bytes);
    }
    return pad_bytes;
  }
  return 0;
}