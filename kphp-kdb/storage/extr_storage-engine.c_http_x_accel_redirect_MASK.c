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
struct connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * ContentTypes ; 
 int FUNC0 (char*,int,char*,char const*,long long,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct connection*,int,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  x_accel_redirects ; 

__attribute__((used)) static int FUNC3 (struct connection *c, const char *filename, long long offset, char base64url_secret[12], int content_type) {
  static char location[256] = "X-Accel-Redirect: ";
  int r = FUNC0 (location + 18, 238, "%s:%llx:%s:%x\r\n", filename, offset, base64url_secret, content_type);
  if (r >= 238) {
    FUNC1 (1, "location buffer overflow\n");
    return -500;
  }
  FUNC2 (c, 307, 0, -1, location, ContentTypes[content_type]);
  x_accel_redirects++;
  return 0;
}