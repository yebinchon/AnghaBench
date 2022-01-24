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

/* Variables and functions */
 int COLORS ; 
 int COLORSCHEME_BLACKNIGHT ; 
 int CRT_colorScheme ; 
 int /*<<< orphan*/ * CRT_colorSchemes ; 
 int /*<<< orphan*/  CRT_colors ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ ColorIndexGrayBlack ; 
 scalar_t__ ColorPairGrayBlack ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int,int) ; 

void FUNC2(int colorScheme) {
   CRT_colorScheme = colorScheme;

   for (int i = 0; i < 8; i++) {
      for (int j = 0; j < 8; j++) {
         if (FUNC0(i,j) != ColorPairGrayBlack) {
            int bg = (colorScheme != COLORSCHEME_BLACKNIGHT)
                     ? (j==0 ? -1 : j)
                     : j;
            FUNC1(FUNC0(i,j), i, bg);
         }
      }
   }

   int grayBlackFg = COLORS > 8 ? 8 : 0;
   int grayBlackBg = (colorScheme != COLORSCHEME_BLACKNIGHT)
                     ? -1
                     : 0;
   FUNC1(ColorIndexGrayBlack, grayBlackFg, grayBlackBg);

   CRT_colors = CRT_colorSchemes[colorScheme];
}