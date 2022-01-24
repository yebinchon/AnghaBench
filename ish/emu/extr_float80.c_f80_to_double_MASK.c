#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long uint64_t ;
struct double_bits {int exp; unsigned long signif; int /*<<< orphan*/  sign; } ;
struct TYPE_6__ {scalar_t__ exp; int signif; int /*<<< orphan*/  sign; } ;
typedef  TYPE_1__ float80 ;
typedef  int /*<<< orphan*/  db ;

/* Variables and functions */
 int EXP64_MAX ; 
 int EXP64_SPECIAL ; 
 scalar_t__ EXP_SPECIAL ; 
 double INFINITY ; 
 double NAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 TYPE_1__ FUNC1 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC2 (double*,struct double_bits*,int) ; 
 unsigned long FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 

double FUNC5(float80 f) {
    if (!FUNC0(f))
        return NAN;
    struct double_bits db;
    db.sign = f.sign;
    int new_exp = FUNC4(f.exp) + 0x3ff;
    if (f.exp == EXP_SPECIAL)
        new_exp = EXP64_SPECIAL;
    else if (new_exp > EXP64_MAX)
        // out of range
        return !f.sign ? INFINITY : -INFINITY;
    if (new_exp <= 0) {
        // number can only be represented in double precision as a denormal
        // shift it enough to make the exponent into EXP64_MIN
        // does it work on numbers that are not denormal but are too small to represent as double?
        f.signif >>= 1;
        f = FUNC1(f, -new_exp);
        new_exp = FUNC4(f.exp) + 0x3ff;
    }
    db.exp = new_exp;
    uint64_t db_signif = FUNC3(f.signif, 11, f.sign);
    // handle the case when f.signif becomes 0x1fffffffffffff after shifting
    // and then is rounded up
    if (db_signif & (1ul << 53)) {
        db_signif >>= 1;
        db.exp++;
    }
    db.signif = db_signif;
    double d;
    FUNC2(&d, &db, sizeof(db));
    return d;
}