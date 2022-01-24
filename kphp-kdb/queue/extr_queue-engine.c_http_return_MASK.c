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
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  http_sent ; 
 int http_sent_size ; 
 int /*<<< orphan*/  no_cache_headers ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int) ; 

void FUNC4 (struct connection *c, const char *str) {
  FUNC0 (str != NULL);
  int len = FUNC1 (str);
  http_sent++;
  http_sent_size += len;
  FUNC2 (c, 200, 0, len, no_cache_headers, "text/javascript; charset=UTF-8");
  FUNC3 (&c->Out, str, len);
}