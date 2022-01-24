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
typedef  int /*<<< orphan*/  unw_word ;

/* Variables and functions */
 int /*<<< orphan*/  P10 ; 
 int /*<<< orphan*/  P7 ; 
 int /*<<< orphan*/  P8 ; 
 int /*<<< orphan*/  P9 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char,unsigned char,void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char,unsigned char,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  UNW_REG_BSP ; 
 int /*<<< orphan*/  UNW_REG_BSPSTORE ; 
 int /*<<< orphan*/  UNW_REG_FPSR ; 
 int /*<<< orphan*/  UNW_REG_LC ; 
 int /*<<< orphan*/  UNW_REG_PFS ; 
 int /*<<< orphan*/  UNW_REG_PR ; 
 int /*<<< orphan*/  UNW_REG_PSP ; 
 int /*<<< orphan*/  UNW_REG_RNAT ; 
 int /*<<< orphan*/  UNW_REG_RP ; 
 int /*<<< orphan*/  UNW_REG_UNAT ; 
 int /*<<< orphan*/  FUNC13 (unsigned char**) ; 
 unsigned char* FUNC14 (unsigned char*,unsigned char,void*) ; 
 unsigned char* FUNC15 (unsigned char*,unsigned char,void*) ; 
 unsigned char* FUNC16 (unsigned char*,unsigned char,void*) ; 
 unsigned char* FUNC17 (unsigned char*,unsigned char,void*) ; 

__attribute__((used)) static unsigned char *
FUNC18 (unsigned char *dp, unsigned char code, void *arg)
{
  unsigned char r, byte1, byte2;
  unw_word t, size;

  if ((code & 0x10) == 0)
    {
      r = (code & 0xf);
      t = FUNC13 (&dp);
      switch (r)
	{
	case 0:
	  size = FUNC13 (&dp);
	  FUNC3(P7, t, size, arg);
	  break;

	case 1: FUNC4(P7, t, arg); break;
	case 2: FUNC12(P7, t, arg); break;
	case 3: FUNC10(P7, UNW_REG_PSP, t, arg); break;
	case 4: FUNC11(P7, UNW_REG_RP, t, arg); break;
	case 5: FUNC9(P7, UNW_REG_RP, t, arg); break;
	case 6: FUNC11(P7, UNW_REG_PFS, t, arg); break;
	case 7: FUNC9(P7, UNW_REG_PFS, t, arg); break;
	case 8: FUNC11(P7, UNW_REG_PR, t, arg); break;
	case 9: FUNC9(P7, UNW_REG_PR, t, arg); break;
	case 10: FUNC11(P7, UNW_REG_LC, t, arg); break;
	case 11: FUNC9(P7, UNW_REG_LC, t, arg); break;
	case 12: FUNC11(P7, UNW_REG_UNAT, t, arg); break;
	case 13: FUNC9(P7, UNW_REG_UNAT, t, arg); break;
	case 14: FUNC11(P7, UNW_REG_FPSR, t, arg); break;
	case 15: FUNC9(P7, UNW_REG_FPSR, t, arg); break;
	default: FUNC1(r); break;
	}
    }
  else
    {
      switch (code & 0xf)
	{
	case 0x0: /* p8 */
	  {
	    r = *dp++;
	    t = FUNC13 (&dp);
	    switch (r)
	      {
	      case  1: FUNC10(P8, UNW_REG_RP, t, arg); break;
	      case  2: FUNC10(P8, UNW_REG_PFS, t, arg); break;
	      case  3: FUNC10(P8, UNW_REG_PR, t, arg); break;
	      case  4: FUNC10(P8, UNW_REG_LC, t, arg); break;
	      case  5: FUNC10(P8, UNW_REG_UNAT, t, arg); break;
	      case  6: FUNC10(P8, UNW_REG_FPSR, t, arg); break;
	      case  7: FUNC11(P8, UNW_REG_BSP, t, arg); break;
	      case  8: FUNC9(P8, UNW_REG_BSP, t, arg); break;
	      case  9: FUNC10(P8, UNW_REG_BSP, t, arg); break;
	      case 10: FUNC11(P8, UNW_REG_BSPSTORE, t, arg); break;
	      case 11: FUNC9(P8, UNW_REG_BSPSTORE, t, arg); break;
	      case 12: FUNC10(P8, UNW_REG_BSPSTORE, t, arg); break;
	      case 13: FUNC11(P8, UNW_REG_RNAT, t, arg); break;
	      case 14: FUNC9(P8, UNW_REG_RNAT, t, arg); break;
	      case 15: FUNC10(P8, UNW_REG_RNAT, t, arg); break;
	      case 16: FUNC7(P8, t, arg); break;
	      case 17: FUNC5(P8, t, arg); break;
	      case 18: FUNC6(P8, t, arg); break;
	      case 19: FUNC8(P8, t, arg); break;
	      default: FUNC1(r); break;
	    }
	  }
	  break;

	case 0x1:
	  byte1 = *dp++; byte2 = *dp++;
	  FUNC2(P9, (byte1 & 0xf), (byte2 & 0x7f), arg);
	  break;

	case 0xf: /* p10 */
	  byte1 = *dp++; byte2 = *dp++;
	  FUNC0(P10, byte1, byte2, arg);
	  break;

	case 0x9:
	  return FUNC14 (dp, code, arg);

	case 0xa:
	  return FUNC15 (dp, code, arg);

	case 0xb:
	  return FUNC16 (dp, code, arg);

	case 0xc:
	  return FUNC17 (dp, code, arg);

	default:
	  FUNC1(code);
	  break;
	}
    }
  return dp;
}