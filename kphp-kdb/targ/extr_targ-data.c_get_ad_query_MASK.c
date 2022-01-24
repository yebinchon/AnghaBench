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
struct advert {char* query; } ;

/* Variables and functions */
 struct advert* FUNC0 (int,int /*<<< orphan*/ ) ; 

char *FUNC1 (int ad_id) {
  struct advert *A = FUNC0 (ad_id, 0);
  if (!A) { return 0; }
  return A->query;
}