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
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (int) ; 

char* FUNC3(const char* in) {
   while (in[0] == ' ' || in[0] == '\t' || in[0] == '\n') {
      in++;
   }
   int len = FUNC0(in);
   while (len > 0 && (in[len-1] == ' ' || in[len-1] == '\t' || in[len-1] == '\n')) {
      len--;
   }
   char* out = FUNC2(len+1);
   FUNC1(out, in, len);
   out[len] = '\0';
   return out;
}