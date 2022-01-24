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
typedef  int /*<<< orphan*/  kfs_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

kfs_hash_t FUNC2 (const char *str) {
  static union {
    unsigned char output[16];
    kfs_hash_t hash;
  } tmp;
  FUNC0 ((unsigned char *) str, FUNC1 (str), tmp.output);
  return tmp.hash;
}