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
typedef  TYPE_1__* wi_t ;
typedef  int /*<<< orphan*/  wi_status ;
struct TYPE_3__ {scalar_t__* is_debug; } ;

/* Variables and functions */
 int /*<<< orphan*/  WI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char**,char const*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t,char*) ; 

wi_status FUNC3(wi_t self, const char *message,
    const char *buf, size_t length) {
  if (self->is_debug && *self->is_debug) {
    char *text;
    FUNC0(&text, buf, length, 80, 30);
    FUNC2("%s[%zd]:\n%s\n", message, length, text);
    FUNC1(text);
  }
  return WI_SUCCESS;
}