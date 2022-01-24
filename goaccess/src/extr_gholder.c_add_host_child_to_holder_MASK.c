#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_9__ {size_t idx; int sub_items_size; TYPE_2__* items; int /*<<< orphan*/  module; } ;
struct TYPE_8__ {char* sub_list; TYPE_1__* metrics; } ;
struct TYPE_7__ {char* data; } ;
typedef  char GSubList ;
typedef  int /*<<< orphan*/  GMetrics ;
typedef  TYPE_3__ GHolder ;

/* Variables and functions */
 int /*<<< orphan*/  MTRC_ID_HOSTNAME ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_5__ gdns_thread ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 

__attribute__((used)) static void
FUNC9 (GHolder * h)
{
  GMetrics *nmetrics;
  GSubList *sub_list = FUNC4 ();

  char *ip = h->items[h->idx].metrics->data;
  char *hostname = NULL;
  int n = h->sub_items_size;

  /* add child nodes */
  FUNC8 (h, sub_list);

  FUNC5 (&gdns_thread.mutex);
  hostname = FUNC3 (ip);
  FUNC6 (&gdns_thread.mutex);

  /* determine if we have the IP's hostname */
  if (!hostname) {
    FUNC1 (ip);
  } else if (hostname) {
    FUNC7 (hostname, MTRC_ID_HOSTNAME, &nmetrics);
    FUNC0 (sub_list, h->module, nmetrics);
    h->items[h->idx].sub_list = sub_list;
    h->sub_items_size++;
    FUNC2 (hostname);
  }

  /* did not add any items */
  if (n == h->sub_items_size)
    FUNC2 (sub_list);
}