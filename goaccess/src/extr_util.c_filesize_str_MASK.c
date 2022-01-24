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
 double FUNC0 (unsigned long long) ; 
 double FUNC1 (unsigned long long) ; 
 double FUNC2 (unsigned long long) ; 
 double FUNC3 (unsigned long long) ; 
 double FUNC4 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,double) ; 
 char* FUNC6 (int) ; 

char *
FUNC7 (unsigned long long log_size)
{
  char *size = FUNC6 (sizeof (char) * 12);
  if (log_size >= (1ULL << 50))
    FUNC5 (size, 12, "%.2f PiB", (double) (log_size) / FUNC3 (1ULL));
  else if (log_size >= (1ULL << 40))
    FUNC5 (size, 12, "%.2f TiB", (double) (log_size) / FUNC4 (1ULL));
  else if (log_size >= (1ULL << 30))
    FUNC5 (size, 12, "%.2f GiB", (double) (log_size) / FUNC0 (1ULL));
  else if (log_size >= (1ULL << 20))
    FUNC5 (size, 12, "%.2f MiB", (double) (log_size) / FUNC2 (1ULL));
  else if (log_size >= (1ULL << 10))
    FUNC5 (size, 12, "%.2f KiB", (double) (log_size) / FUNC1 (1ULL));
  else
    FUNC5 (size, 12, "%.1f   B", (double) (log_size));

  return size;
}