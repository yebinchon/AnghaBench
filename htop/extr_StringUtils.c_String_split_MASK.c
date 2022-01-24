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
 char* FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 char** FUNC3 (int const,int) ; 
 char* FUNC4 (int) ; 
 char** FUNC5 (char**,int) ; 

char** FUNC6(const char* s, char sep, int* n) {
   *n = 0;
   const int rate = 10;
   char** out = FUNC3(rate, sizeof(char*));
   int ctr = 0;
   int blocks = rate;
   char* where;
   while ((where = FUNC0(s, sep)) != NULL) {
      int size = where - s;
      char* token = FUNC4(size + 1);
      FUNC2(token, s, size);
      token[size] = '\0';
      out[ctr] = token;
      ctr++;
      if (ctr == blocks) {
         blocks += rate;
         out = (char**) FUNC5(out, sizeof(char*) * blocks);
      }
      s += size + 1;
   }
   if (s[0] != '\0') {
      int size = FUNC1(s);
      char* token = FUNC4(size + 1);
      FUNC2(token, s, size + 1);
      out[ctr] = token;
      ctr++;
   }
   out = FUNC5(out, sizeof(char*) * (ctr + 1));
   out[ctr] = NULL;
   *n = ctr;
   return out;
}