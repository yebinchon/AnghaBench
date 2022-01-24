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
struct TYPE_2__ {scalar_t__ output_format_idx; } ;

/* Variables and functions */
 TYPE_1__ conf ; 
 scalar_t__ FUNC0 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  glog ; 
 int /*<<< orphan*/  holder ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  char *csv = NULL, *json = NULL, *html = NULL;

  /* CSV */
  if (FUNC0 (&csv, "csv", 1) == 0)
    FUNC2 (glog, holder, csv);
  /* JSON */
  if (FUNC0 (&json, "json", 1) == 0)
    FUNC3 (glog, holder, json);
  /* HTML */
  if (FUNC0 (&html, "html", 1) == 0 || conf.output_format_idx == 0)
    FUNC4 (html);

  FUNC1 (csv);
  FUNC1 (html);
  FUNC1 (json);
}