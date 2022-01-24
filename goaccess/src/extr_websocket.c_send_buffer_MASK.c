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
typedef  int /*<<< orphan*/  WSClient ;
struct TYPE_2__ {scalar_t__ use_ssl; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 TYPE_1__ wsconfig ; 

__attribute__((used)) static int
FUNC2 (WSClient * client, const char *buffer, int len)
{
#ifdef HAVE_LIBSSL
  if (wsconfig.use_ssl)
    return send_ssl_buffer (client, buffer, len);
  else
    return send_plain_buffer (client, buffer, len);
#else
  return FUNC0 (client, buffer, len);
#endif
}