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
struct TYPE_2__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 TYPE_1__** URI_CACHE ; 
 unsigned int FUNC0 (char const* const) ; 
 int /*<<< orphan*/  FUNC1 (char const* const,int /*<<< orphan*/ *) ; 
 size_t uri_off ; 

__attribute__((used)) static void FUNC2 (const char *const uri) {
  const unsigned cache_slot = FUNC0 (uri);
  if (URI_CACHE[cache_slot] && !FUNC1 (uri, &URI_CACHE[cache_slot]->data[uri_off])) {
    URI_CACHE[cache_slot] = NULL;
  }
}