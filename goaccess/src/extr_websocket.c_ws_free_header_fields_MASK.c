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
struct TYPE_3__ {scalar_t__ referer; scalar_t__ ws_sock_ver; scalar_t__ ws_resp; scalar_t__ ws_protocol; scalar_t__ ws_key; scalar_t__ ws_accept; scalar_t__ upgrade; scalar_t__ protocol; scalar_t__ path; scalar_t__ origin; scalar_t__ method; scalar_t__ agent; scalar_t__ host; scalar_t__ connection; } ;
typedef  TYPE_1__ WSHeaders ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void
FUNC1 (WSHeaders * headers)
{
  if (headers->connection)
    FUNC0 (headers->connection);
  if (headers->host)
    FUNC0 (headers->host);
  if (headers->agent)
    FUNC0 (headers->agent);
  if (headers->method)
    FUNC0 (headers->method);
  if (headers->origin)
    FUNC0 (headers->origin);
  if (headers->path)
    FUNC0 (headers->path);
  if (headers->protocol)
    FUNC0 (headers->protocol);
  if (headers->upgrade)
    FUNC0 (headers->upgrade);
  if (headers->ws_accept)
    FUNC0 (headers->ws_accept);
  if (headers->ws_key)
    FUNC0 (headers->ws_key);
  if (headers->ws_protocol)
    FUNC0 (headers->ws_protocol);
  if (headers->ws_resp)
    FUNC0 (headers->ws_resp);
  if (headers->ws_sock_ver)
    FUNC0 (headers->ws_sock_ver);
  if (headers->referer)
    FUNC0 (headers->referer);
}