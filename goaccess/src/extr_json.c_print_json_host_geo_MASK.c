#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* metrics; struct TYPE_7__* next; } ;
struct TYPE_6__ {int size; TYPE_3__* head; } ;
struct TYPE_5__ {size_t id; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ GSubList ;
typedef  TYPE_3__ GSubItem ;
typedef  int /*<<< orphan*/  GJSON ;

/* Variables and functions */
 int /*<<< orphan*/  NL ; 
 int /*<<< orphan*/  TAB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nlines ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC2 (GJSON * json, GSubList * sl, int iisp)
{
  GSubItem *iter;
  int i;
  static const char *key[] = {
    "country",
    "city",
    "hostname",
  };

  FUNC1 (json, ",%.*s", nlines, NL);

  /* Iterate over child properties (country, city, etc) and print them out */
  for (i = 0, iter = sl->head; iter; iter = iter->next, i++) {
    FUNC1 (json, "%.*s\"%s\": \"", iisp, TAB, key[iter->metrics->id]);
    FUNC0 (json, iter->metrics->data);
    FUNC1 (json, (i != sl->size - 1) ? "\",%.*s" : "\"", nlines, NL);
  }
}