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
struct lev_dns_record_a {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct lev_dns_record_a*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dns_type_a ; 

__attribute__((used)) static int FUNC1 (struct lev_dns_record_a *E, int s) {
  return FUNC0 (E, s, dns_type_a, E->name);
}