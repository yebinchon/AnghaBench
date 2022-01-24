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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*,int*) ; 

char *FUNC4 (char *buffer, int buff_size, char *str, int len) {
  char *ptr = str, *out = buffer, *str_e = str + len, *out_e = buffer + buff_size;
  while (ptr < str_e && *ptr) {
    int a = 0, b;
    char *tr = FUNC3 (ptr, &a);
    if (tr) {
      b = FUNC2 (tr);
    } else {
      b = 1;
      tr = ptr;
    }
    FUNC0 (a > 0 && b >= 0);
    if (out + b > out_e) {
      *out = 0;
      return buffer;
    }
    FUNC1 (out, tr, b);
    out += b;
    ptr += a;
  }
  *out = 0;
  return buffer;    
}