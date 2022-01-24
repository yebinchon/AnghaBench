#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int type; int /*<<< orphan*/  su64; int /*<<< orphan*/  igsl; int /*<<< orphan*/  ss32; int /*<<< orphan*/  si32; int /*<<< orphan*/  iu64; int /*<<< orphan*/  is32; int /*<<< orphan*/  ii32; } ;
typedef  TYPE_1__ GKHashMetric ;

/* Variables and functions */
#define  MTRC_TYPE_IGSL 134 
#define  MTRC_TYPE_II32 133 
#define  MTRC_TYPE_IS32 132 
#define  MTRC_TYPE_IU64 131 
#define  MTRC_TYPE_SI32 130 
#define  MTRC_TYPE_SS32 129 
#define  MTRC_TYPE_SU64 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (GKHashMetric mtrc)
{
  /* Determine the hash structure type */
  switch (mtrc.type) {
  case MTRC_TYPE_II32:
    FUNC1 (mtrc.ii32);
    break;
  case MTRC_TYPE_IS32:
    FUNC2 (mtrc.is32);
    break;
  case MTRC_TYPE_IU64:
    FUNC3 (mtrc.iu64);
    break;
  case MTRC_TYPE_SI32:
    FUNC4 (mtrc.si32);
    break;
  case MTRC_TYPE_SS32:
    FUNC5 (mtrc.ss32);
    break;
  case MTRC_TYPE_IGSL:
    FUNC0 (mtrc.igsl);
    break;
  case MTRC_TYPE_SU64:
    FUNC6 (mtrc.su64);
    break;
  }
}