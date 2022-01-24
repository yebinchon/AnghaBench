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
typedef  int u32 ;
typedef  scalar_t__ time_t ;
struct stat {size_t st_size; } ;
typedef  int /*<<< orphan*/  hashcat_ctx_t ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 scalar_t__ EXTRASZ ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char*) ; 
 size_t FUNC3 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (char*,scalar_t__,char*,int) ; 
 scalar_t__ FUNC7 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10 (hashcat_ctx_t *hashcat_ctx, const char *kernel_file, size_t *kernel_lengths, char **kernel_sources, const bool force_recompile)
{
  HCFILE fp;

  if (FUNC2 (&fp, kernel_file, "rb") == true)
  {
    struct stat st;

    if (FUNC7 (kernel_file, &st))
    {
      FUNC1 (&fp);

      return false;
    }

    #define EXTRASZ 100

    size_t klen = st.st_size;

    char *buf = (char *) FUNC5 (klen + 1 + EXTRASZ);

    size_t num_read = FUNC3 (buf, sizeof (char), klen, &fp);

    FUNC1 (&fp);

    if (num_read != klen)
    {
      FUNC0 (hashcat_ctx, "%s: %s", kernel_file, FUNC8 (errno));

      FUNC4 (buf);

      return false;
    }

    buf[klen] = 0;

    if (force_recompile == true)
    {
      // this adds some hopefully unique data to the backend kernel source
      // the effect should be that backend kernel compiler caching see this as new "uncached" source
      // we have to do this since they do not check for the changes only in the #include source

      time_t tlog = FUNC9 (NULL);

      const int extra_len = FUNC6 (buf + klen, EXTRASZ, "\n//%u\n", (u32) tlog);

      klen += extra_len;
    }

    kernel_lengths[0] = klen;

    kernel_sources[0] = buf;
  }
  else
  {
    FUNC0 (hashcat_ctx, "%s: %s", kernel_file, FUNC8 (errno));

    return false;
  }

  return true;
}