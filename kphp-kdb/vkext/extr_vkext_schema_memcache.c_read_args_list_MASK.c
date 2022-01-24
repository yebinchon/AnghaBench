#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct arg {int exist_var_num; int flags; int var_num; TYPE_1__* type; void* exist_var_bit; int /*<<< orphan*/  id; } ;
struct TYPE_4__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FLAG_NOVAR ; 
 int FLAG_OPT_FIELD ; 
 void* TLS_ARG ; 
 void* TLS_ARG_V2 ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int*) ; 
 TYPE_1__* FUNC4 (int*) ; 
 int schema_version ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 struct arg* FUNC8 (int) ; 

int FUNC9 (struct arg **args, int args_num, int *var_num) {
  int i;
  for (i = 0; i < args_num; i++) {
    args[i] = FUNC8 (sizeof (struct arg));
    args[i]->exist_var_num = -1;
    args[i]->exist_var_bit = 0;
    FUNC1 (sizeof (struct arg));
    if (schema_version == 1) {
      if (FUNC6 () != TLS_ARG) {
        return -1;
      }
    } else {
      if (FUNC6 () != TLS_ARG_V2) {
        return -1;
      }
    }
    if (FUNC7 (&args[i]->id) < 0) {
      return -1;
    }
    FUNC0 (FUNC5 (args[i]->id));
    FUNC1 (FUNC5 (args[i]->id));
    args[i]->flags = FUNC6 ();
    if (schema_version >= 2) {
      if (args[i]->flags & 2) {
        args[i]->flags &= ~2;
        args[i]->flags |= (1 << 20);
      }
      if (args[i]->flags & 4) {
        args[i]->flags &= ~4;
        args[i]->var_num = FUNC6 ();
      } else {
        args[i]->var_num = -1;
      }
    } else {
      args[i]->var_num = FUNC6 ();
    }
    if (args[i]->var_num >= *var_num) {
      *var_num = args[i]->var_num + 1;
    }
    if (args[i]->flags & FLAG_OPT_FIELD) {
      args[i]->exist_var_num = FUNC6 ();
      args[i]->exist_var_bit = FUNC6 ();
    }
    if (schema_version >= 2) {
      args[i]->type = FUNC4 (var_num);
    } else {
      args[i]->type = FUNC3 (var_num);
    }
    if (!args[i]->type) {
      return -1;
    }
    if (args[i]->var_num < 0 && args[i]->exist_var_num < 0 && (FUNC2(args[i]->type) || (args[i]->type->flags & FLAG_NOVAR))) {
      args[i]->flags |= FLAG_NOVAR;
    }
  }
  return 1;
}