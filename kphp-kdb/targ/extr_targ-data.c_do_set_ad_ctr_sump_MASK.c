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

/* Variables and functions */
 int FUNC0 (int,long long,long long) ; 
 int FUNC1 (int,long long,long long,long long) ; 

int FUNC2 (int ad_id, long long g_clicks, long long g_views, long long g_sump0, long long g_sump1, long long g_sump2) {
  return FUNC0 (ad_id, g_clicks, g_views) & FUNC1 (ad_id, g_sump0, g_sump1, g_sump2);
}