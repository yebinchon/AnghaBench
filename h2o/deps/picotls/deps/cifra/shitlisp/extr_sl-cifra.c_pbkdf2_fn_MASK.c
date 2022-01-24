#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/ * v; } ;
struct TYPE_16__ {TYPE_14__ bn; } ;
struct TYPE_17__ {TYPE_1__ integer; } ;
struct TYPE_18__ {TYPE_2__ u; } ;
typedef  TYPE_3__ sl_value ;
typedef  int /*<<< orphan*/  sl_symboltab ;
typedef  int /*<<< orphan*/  sl_iter ;
typedef  int /*<<< orphan*/  cf_chash ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_14__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/  const*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sl_assert_bytes ; 
 int /*<<< orphan*/  sl_assert_integer ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 () ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  sl_preprocess_eval ; 

__attribute__((used)) static sl_value * FUNC7(sl_value *self, sl_value *args, sl_symboltab *tab, const cf_chash *h)
{
  sl_iter it = FUNC6(args);
  sl_value *pw = FUNC5(&it, sl_preprocess_eval, sl_assert_bytes, tab);
  sl_value *salt = FUNC5(&it, sl_preprocess_eval, sl_assert_bytes, tab);
  sl_value *iterations = FUNC5(&it, sl_preprocess_eval, sl_assert_integer, tab);
  sl_value *outlen = FUNC5(&it, sl_preprocess_eval, sl_assert_integer, tab);

  sl_value *ret;

  if (!pw || !salt || !iterations || !outlen)
    ret = FUNC4();
  else
  {
    FUNC0(FUNC1(&iterations->u.integer.bn) == 1);
    FUNC0(FUNC1(&outlen->u.integer.bn) == 1);
    ret = FUNC2(h, pw, salt,
                    iterations->u.integer.bn.v[0],
                    outlen->u.integer.bn.v[0]);
  }
  
  FUNC3(pw);
  FUNC3(salt);
  FUNC3(iterations);
  FUNC3(outlen);
  return ret;
}