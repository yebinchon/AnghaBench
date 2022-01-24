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
typedef  int UInt32 ;
struct TYPE_4__ {int /*<<< orphan*/  ver; } ;
typedef  TYPE_1__ Cx86cpuid ;
typedef  int BoolInt ;

/* Variables and functions */
#define  CPU_FIRM_AMD 130 
#define  CPU_FIRM_INTEL 129 
#define  CPU_FIRM_VIA 128 
 int True ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

BoolInt FUNC4()
{
  Cx86cpuid p;
  int firm;
  UInt32 family, model;
  if (!FUNC0(&p))
    return True;

  family = FUNC1(p.ver);
  model = FUNC3(p.ver);
  
  firm = FUNC2(&p);

  switch (firm)
  {
    case CPU_FIRM_INTEL: return (family < 6 || (family == 6 && (
        /* In-Order Atom CPU */
           model == 0x1C  /* 45 nm, N4xx, D4xx, N5xx, D5xx, 230, 330 */
        || model == 0x26  /* 45 nm, Z6xx */
        || model == 0x27  /* 32 nm, Z2460 */
        || model == 0x35  /* 32 nm, Z2760 */
        || model == 0x36  /* 32 nm, N2xxx, D2xxx */
        )));
    case CPU_FIRM_AMD: return (family < 5 || (family == 5 && (model < 6 || model == 0xA)));
    case CPU_FIRM_VIA: return (family < 6 || (family == 6 && model < 0xF));
  }
  return True;
}