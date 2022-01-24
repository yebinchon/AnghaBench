#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  module; } ;
struct TYPE_5__ {scalar_t__ protocol; scalar_t__ method; } ;
typedef  TYPE_1__ GOutput ;
typedef  TYPE_2__ GHTML ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC13 (FILE * fp, const GHTML * def, int sp)
{
  const GOutput *output = FUNC0 (def->module);

  FUNC7 (fp, sp);
  FUNC12 (fp, sp);
  FUNC2 (fp, sp);
  FUNC1 (fp, sp);
  FUNC5 (fp, sp);
  FUNC9 (fp, sp);

  if (output->method)
    FUNC10 (fp, sp);
  if (output->protocol)
    FUNC11 (fp, sp);

  FUNC3 (fp, sp);
  FUNC4 (fp, sp);
  FUNC8 (fp, sp);

  FUNC6 (fp, def->module, sp);
}