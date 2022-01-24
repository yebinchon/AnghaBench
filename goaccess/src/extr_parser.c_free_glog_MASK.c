#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* vhost; struct TYPE_4__* userid; struct TYPE_4__* uniq_key; struct TYPE_4__* time; struct TYPE_4__* status; struct TYPE_4__* req; struct TYPE_4__* req_key; struct TYPE_4__* ref; struct TYPE_4__* qstr; struct TYPE_4__* protocol; struct TYPE_4__* os_type; struct TYPE_4__* os; struct TYPE_4__* method; struct TYPE_4__* keyphrase; struct TYPE_4__* host; struct TYPE_4__* errstr; struct TYPE_4__* date; struct TYPE_4__* country; struct TYPE_4__* continent; struct TYPE_4__* browser_type; struct TYPE_4__* browser; struct TYPE_4__* agent; } ;
typedef  TYPE_1__ GLogItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1 (GLogItem * logitem)
{
  if (logitem->agent != NULL)
    FUNC0 (logitem->agent);
  if (logitem->browser != NULL)
    FUNC0 (logitem->browser);
  if (logitem->browser_type != NULL)
    FUNC0 (logitem->browser_type);
  if (logitem->continent != NULL)
    FUNC0 (logitem->continent);
  if (logitem->country != NULL)
    FUNC0 (logitem->country);
  if (logitem->date != NULL)
    FUNC0 (logitem->date);
  if (logitem->errstr != NULL)
    FUNC0 (logitem->errstr);
  if (logitem->host != NULL)
    FUNC0 (logitem->host);
  if (logitem->keyphrase != NULL)
    FUNC0 (logitem->keyphrase);
  if (logitem->method != NULL)
    FUNC0 (logitem->method);
  if (logitem->os != NULL)
    FUNC0 (logitem->os);
  if (logitem->os_type != NULL)
    FUNC0 (logitem->os_type);
  if (logitem->protocol != NULL)
    FUNC0 (logitem->protocol);
  if (logitem->qstr != NULL)
    FUNC0 (logitem->qstr);
  if (logitem->ref != NULL)
    FUNC0 (logitem->ref);
  if (logitem->req_key != NULL)
    FUNC0 (logitem->req_key);
  if (logitem->req != NULL)
    FUNC0 (logitem->req);
  if (logitem->status != NULL)
    FUNC0 (logitem->status);
  if (logitem->time != NULL)
    FUNC0 (logitem->time);
  if (logitem->uniq_key != NULL)
    FUNC0 (logitem->uniq_key);
  if (logitem->userid != NULL)
    FUNC0 (logitem->userid);
  if (logitem->vhost != NULL)
    FUNC0 (logitem->vhost);

  FUNC0 (logitem);
}