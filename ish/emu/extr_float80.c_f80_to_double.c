
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned long uint64_t ;
struct double_bits {int exp; unsigned long signif; int sign; } ;
struct TYPE_6__ {scalar_t__ exp; int signif; int sign; } ;
typedef TYPE_1__ float80 ;
typedef int db ;


 int EXP64_MAX ;
 int EXP64_SPECIAL ;
 scalar_t__ EXP_SPECIAL ;
 double INFINITY ;
 double NAN ;
 int f80_is_supported (TYPE_1__) ;
 TYPE_1__ f80_shift_right (TYPE_1__,int) ;
 int memcpy (double*,struct double_bits*,int) ;
 unsigned long u128_shift_right_round (int,int,int ) ;
 int unbias (scalar_t__) ;

double f80_to_double(float80 f) {
    if (!f80_is_supported(f))
        return NAN;
    struct double_bits db;
    db.sign = f.sign;
    int new_exp = unbias(f.exp) + 0x3ff;
    if (f.exp == EXP_SPECIAL)
        new_exp = EXP64_SPECIAL;
    else if (new_exp > EXP64_MAX)

        return !f.sign ? INFINITY : -INFINITY;
    if (new_exp <= 0) {



        f.signif >>= 1;
        f = f80_shift_right(f, -new_exp);
        new_exp = unbias(f.exp) + 0x3ff;
    }
    db.exp = new_exp;
    uint64_t db_signif = u128_shift_right_round(f.signif, 11, f.sign);


    if (db_signif & (1ul << 53)) {
        db_signif >>= 1;
        db.exp++;
    }
    db.signif = db_signif;
    double d;
    memcpy(&d, &db, sizeof(db));
    return d;
}
