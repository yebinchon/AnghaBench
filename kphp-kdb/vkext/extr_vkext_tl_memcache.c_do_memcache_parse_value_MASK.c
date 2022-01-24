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
struct TYPE_3__ {scalar_t__ data; void* len; } ;
struct TYPE_4__ {TYPE_1__ strval; int /*<<< orphan*/  lval; } ;
struct memcache_value {int type; TYPE_2__ val; void* flags; } ;

/* Variables and functions */
#define  MEMCACHE_ERROR 133 
#define  MEMCACHE_FALSE 132 
#define  MEMCACHE_TRUE 131 
#define  MEMCACHE_VALUE_LONG 130 
#define  MEMCACHE_VALUE_NOT_FOUND 129 
#define  MEMCACHE_VALUE_STRING 128 
 int /*<<< orphan*/  error_buf ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 void* FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

struct memcache_value FUNC9 (void) {
  struct memcache_value value;
  FUNC4 ();
  int x = FUNC5 ();
  switch (x) {
  case MEMCACHE_VALUE_NOT_FOUND:
    value.type = MEMCACHE_VALUE_NOT_FOUND;
    break;
  case MEMCACHE_VALUE_LONG:
    value.type = MEMCACHE_VALUE_LONG;
    value.val.lval = FUNC6 ();
    value.flags = FUNC5 ();
    break;
  case MEMCACHE_VALUE_STRING:
    value.type = MEMCACHE_VALUE_STRING;
    value.val.strval.len = FUNC7 (&value.val.strval.data);
    value.flags = FUNC5 ();
    break;
  case MEMCACHE_ERROR:
    value.type = MEMCACHE_ERROR;
    FUNC6 ();
    FUNC5 ();
    value.val.strval.len = FUNC7 (&value.val.strval.data);
    break;
  case MEMCACHE_TRUE:
    value.type = MEMCACHE_TRUE;
    break;
  case MEMCACHE_FALSE:
    value.type = MEMCACHE_FALSE;
    break;
  default:
    FUNC0 (error_buf, 1000, "Unknown magic %x", x);
    FUNC8 (error_buf);
    break;
  }
  FUNC2 ();
  if (FUNC3 ()) {
    value.type = MEMCACHE_ERROR;
    value.val.strval.data = FUNC3 ();
    value.val.strval.len = FUNC1 (value.val.strval.data);
  }
  return value;
}