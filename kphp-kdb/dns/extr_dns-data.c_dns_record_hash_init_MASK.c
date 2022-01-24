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
 scalar_t__ RH ; 
 double FUNC0 (int) ; 
 scalar_t__ FUNC1 (double) ; 
 double max_hashed_records ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,double) ; 
 double records_hash_prime ; 
 int tot_hashed_records ; 

__attribute__((used)) static void FUNC3 (void) {
  if (RH) {
    return;
  }
  records_hash_prime = FUNC0 (tot_hashed_records ? tot_hashed_records * 2 : 1000000);
  max_hashed_records = records_hash_prime * 0.75;
  RH = FUNC1 (records_hash_prime * 4);
  FUNC2 (RH, 0xff, records_hash_prime * 4);
  tot_hashed_records = 0;
}