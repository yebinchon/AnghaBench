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
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

int FUNC3 (struct connection *c, const char *user, char buffer[20]) {
  FUNC1 (buffer, 0, 20);

  if (!FUNC2 (user, "kitten")) {
    unsigned char buffer2[20];
    FUNC0 ((unsigned char *)"test", 4, buffer2);
    FUNC0 (buffer2, 20, (unsigned char *)buffer);
    return 2;
  }
  
  return 1;
}