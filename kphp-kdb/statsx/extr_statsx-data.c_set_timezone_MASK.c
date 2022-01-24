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
struct lev_timezone64 {long long cnt_id; } ;
struct lev_timezone {long long cnt_id; } ;
struct counter {char timezone; } ;

/* Variables and functions */
 scalar_t__ LEV_STATS_TIMEZONE ; 
 scalar_t__ LEV_STATS_TIMEZONE_64 ; 
 void* FUNC0 (scalar_t__,int,long long) ; 
 struct counter* FUNC1 (long long,int /*<<< orphan*/ ) ; 
 scalar_t__ ignore_set_timezone ; 

int FUNC2 (long long counter_id, int timezone, int replay) {
  if (ignore_set_timezone) {
    return 0;
  }
  struct counter *C = FUNC1 (counter_id, 0);
  C->timezone = (char)timezone;  
  if (!replay) {
    if (counter_id == (int)counter_id) {
      struct lev_timezone *LV = FUNC0 (LEV_STATS_TIMEZONE + (char)timezone, sizeof (struct lev_timezone), counter_id);
      LV->cnt_id = counter_id;  
    } else {
      struct lev_timezone64 *LV = FUNC0 (LEV_STATS_TIMEZONE_64 + (char)timezone, sizeof (struct lev_timezone64), counter_id);
      LV->cnt_id = counter_id;  
    }
  }
  return timezone;
}