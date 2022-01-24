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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 char* FUNC3 (size_t) ; 
 char* FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int /*<<< orphan*/ ) ; 

char* FUNC6(pid_t pid) {
   char procname[32+1];
   FUNC5(procname, 32, "/proc/%d/environ", pid);
   FILE* fd = FUNC1(procname, "r");
   char *env = NULL;
   if (fd) {
      size_t capacity = 4096, size = 0, bytes;
      env = FUNC3(capacity);
      while (env && (bytes = FUNC2(env+size, 1, capacity-size, fd)) > 0) {
         size += bytes;
         capacity *= 2;
         env = FUNC4(env, capacity);
      }
      FUNC0(fd);
      if (size < 2 || env[size-1] || env[size-2]) {
         if (size + 2 < capacity) {
            env = FUNC4(env, capacity+2);
         }
         env[size] = 0;
         env[size+1] = 0;
      }
   }
   return env;
}