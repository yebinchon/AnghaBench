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
typedef  enum decClass { ____Placeholder_decClass } decClass ;
typedef  int /*<<< orphan*/  decNumber ;
typedef  int /*<<< orphan*/  decContext ;

/* Variables and functions */
 int DEC_CLASS_NEG_INF ; 
 int DEC_CLASS_NEG_NORMAL ; 
 int DEC_CLASS_NEG_SUBNORMAL ; 
 int DEC_CLASS_NEG_ZERO ; 
 int DEC_CLASS_POS_INF ; 
 int DEC_CLASS_POS_NORMAL ; 
 int DEC_CLASS_POS_SUBNORMAL ; 
 int DEC_CLASS_POS_ZERO ; 
 int DEC_CLASS_QNAN ; 
 int DEC_CLASS_SNAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 

enum decClass FUNC6(const decNumber *dn, decContext *set) {
  if (FUNC4(dn)) {
    if (FUNC2(dn)) return DEC_CLASS_QNAN;
    if (FUNC3(dn)) return DEC_CLASS_SNAN;
    // must be an infinity
    if (FUNC0(dn)) return DEC_CLASS_NEG_INF;
    return DEC_CLASS_POS_INF;
    }
  // is finite
  if (FUNC1(dn, set)) { // most common
    if (FUNC0(dn)) return DEC_CLASS_NEG_NORMAL;
    return DEC_CLASS_POS_NORMAL;
    }
  // is subnormal or zero
  if (FUNC5(dn)) {    // most common
    if (FUNC0(dn)) return DEC_CLASS_NEG_ZERO;
    return DEC_CLASS_POS_ZERO;
    }
  if (FUNC0(dn)) return DEC_CLASS_NEG_SUBNORMAL;
  return DEC_CLASS_POS_SUBNORMAL;
  }