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
struct forth_output {int dummy; } ;
typedef  int /*<<< orphan*/  s ;

/* Variables and functions */
 int /*<<< orphan*/  DiskResource ; 
 long long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAX_SHARED_MEMORY_SIZE ; 
 int /*<<< orphan*/  MapResource ; 
 int /*<<< orphan*/  MemoryResource ; 
 int /*<<< orphan*/  PixelsResource ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ThreadsResource ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 long long gm_max_load_image_area ; 
 int image_initialized ; 
 int /*<<< orphan*/  FUNC5 (char*,long long) ; 
 int FUNC6 (char*,int,char*,long long) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int verbosity ; 

void FUNC8 (char *prog_name, long long max_load_image_area, long long memory_limit, long long map_limit, long long disk_limit, int threads_limit) {
  char *t[4];
  int k = 0;
  if (image_initialized) {
    return;
  }
  FUNC4 (sizeof (struct forth_output) == MAX_SHARED_MEMORY_SIZE);
  image_initialized = 1;

  char s[32];

  #define SETENV_TMP(x) assert(!setenv(t[k++] = x,s,1))
  if (memory_limit > 0) {
    FUNC4 (FUNC6 (s, sizeof (s), "%lldk", memory_limit >> 10) < sizeof (s));
    SETENV_TMP ("MAGICK_LIMIT_MEMORY");
  }

  if (map_limit > 0) {
    FUNC4 (FUNC6 (s, sizeof (s), "%lldk", map_limit >> 10) < sizeof (s));
    SETENV_TMP ("MAGICK_LIMIT_MAP");
  }

  if (disk_limit >= 0) {
    FUNC4 (FUNC6 (s, sizeof (s), "%lldk", disk_limit >> 10) < sizeof (s));
    SETENV_TMP ("MAGICK_LIMIT_DISK");
  }

  if (max_load_image_area > 0) {
    gm_max_load_image_area = max_load_image_area;
    FUNC4 (FUNC6 (s, sizeof (s), "%lld", max_load_image_area) < sizeof (s));
    SETENV_TMP ("MAGICK_LIMIT_PIXELS");
  }

  #undef SETENV_TMP

  FUNC1 (prog_name);

  while (--k >= 0) {
    FUNC7 (t[k]);
  }

  FUNC3 (ThreadsResource, threads_limit);

  if (verbosity >= 3) {
    long long x = FUNC0 (MemoryResource);
    FUNC5 ("GetMagickResourceLimit (MemoryResource): %lld\n", x);
    x = FUNC0 (DiskResource);
    FUNC5 ("GetMagickResourceLimit (DiskResource): %lld\n", x);
    x = FUNC0 (MapResource);
    FUNC5 ("GetMagickResourceLimit (MapResource): %lld\n", x);
    x = FUNC0 (PixelsResource);
    FUNC5 ("GetMagickResourceLimit (PixelsResource): %lld\n", x);
    x = FUNC0 (ThreadsResource);
    FUNC5 ("GetMagickResourceLimit (ThreadsResource): %lld\n", x);
  }

}