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
struct TYPE_3__ {void* referer; void* agent; void* ws_sock_ver; void* ws_key; void* ws_protocol; void* connection; void* upgrade; void* origin; void* host; } ;
typedef  TYPE_1__ WSHeaders ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char*) ; 
 void* FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2 (WSHeaders * headers, char *key, char *value)
{
  if (FUNC0 ("Host", key) == 0)
    headers->host = FUNC1 (value);
  else if (FUNC0 ("Origin", key) == 0)
    headers->origin = FUNC1 (value);
  else if (FUNC0 ("Upgrade", key) == 0)
    headers->upgrade = FUNC1 (value);
  else if (FUNC0 ("Connection", key) == 0)
    headers->connection = FUNC1 (value);
  else if (FUNC0 ("Sec-WebSocket-Protocol", key) == 0)
    headers->ws_protocol = FUNC1 (value);
  else if (FUNC0 ("Sec-WebSocket-Key", key) == 0)
    headers->ws_key = FUNC1 (value);
  else if (FUNC0 ("Sec-WebSocket-Version", key) == 0)
    headers->ws_sock_ver = FUNC1 (value);
  else if (FUNC0 ("User-Agent", key) == 0)
    headers->agent = FUNC1 (value);
  else if (FUNC0 ("Referer", key) == 0)
    headers->referer = FUNC1 (value);
}