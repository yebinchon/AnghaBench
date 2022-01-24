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
typedef  scalar_t__ pcre_uchar ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ CHAR_COMMA ; 
 scalar_t__ const CHAR_RIGHT_CURLY_BRACKET ; 
 int FALSE ; 
 scalar_t__ FUNC0 (scalar_t__ const) ; 
 int TRUE ; 

__attribute__((used)) static BOOL
FUNC1(const pcre_uchar *p)
{
if (!FUNC0(*p)) return FALSE;
p++;
while (FUNC0(*p)) p++;
if (*p == CHAR_RIGHT_CURLY_BRACKET) return TRUE;

if (*p++ != CHAR_COMMA) return FALSE;
if (*p == CHAR_RIGHT_CURLY_BRACKET) return TRUE;

if (!FUNC0(*p)) return FALSE;
p++;
while (FUNC0(*p)) p++;

return (*p == CHAR_RIGHT_CURLY_BRACKET);
}