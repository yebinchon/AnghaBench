#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct connection {int /*<<< orphan*/  Out; TYPE_1__* type; scalar_t__ crypto; } ;
struct TYPE_4__ {int block_size; } ;
struct TYPE_3__ {int (* crypto_needed_output_bytes ) (struct connection*) ;} ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct connection*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (struct connection*) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC6 (struct connection *c, int packet_len) {
  int pad_bytes = 0;
  if (c->crypto) {
    pad_bytes = c->type->crypto_needed_output_bytes (c);
    if (packet_len >= 0) {
      int b = FUNC0(c)->block_size;
      packet_len += 4;
      packet_len = b - packet_len % b;
      if (packet_len == b) {
        packet_len = 0;
      }
      FUNC1 (packet_len == pad_bytes);
    }
    if (verbosity > 1) {
      FUNC2 (stderr, "sqls_flush_query: padding with %d bytes\n", pad_bytes);
    }
    if (pad_bytes > 0) {
      static char pad_str[16];
      FUNC1 (pad_bytes <= 15);
      FUNC3 (pad_str, pad_bytes, pad_bytes);
      FUNC5 (&c->Out, pad_str, pad_bytes);
    }
  }
  return pad_bytes;
}