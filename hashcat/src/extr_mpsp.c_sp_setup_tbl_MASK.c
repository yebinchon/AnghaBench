#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* markov_hcstat2; void* markov_classic; void* markov_disable; } ;
typedef  TYPE_1__ user_options_t ;
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u64 ;
typedef  void* u32 ;
struct stat {scalar_t__ st_size; } ;
struct TYPE_10__ {TYPE_3__* markov_table_buf; TYPE_3__* root_table_buf; } ;
typedef  TYPE_2__ mask_ctx_t ;
typedef  int /*<<< orphan*/  hcstat_tmp ;
struct TYPE_11__ {scalar_t__ val; void* key; } ;
typedef  TYPE_3__ hcstat_table_t ;
struct TYPE_12__ {TYPE_1__* user_options; TYPE_2__* mask_ctx; TYPE_5__* folder_config; } ;
typedef  TYPE_4__ hashcat_ctx_t ;
struct TYPE_13__ {char* shared_dir; } ;
typedef  TYPE_5__ folder_config_t ;
typedef  scalar_t__ SizeT ;
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 int CHARSIZ ; 
 scalar_t__ SP_FILESZ ; 
 char* SP_HCSTAT ; 
 int SP_MARKOV_CNT ; 
 int SP_PW_MAX ; 
 int SP_ROOT_CNT ; 
 scalar_t__ SP_VERSION ; 
 scalar_t__ const SZ_OK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC4 (scalar_t__*,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,char const*) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  sp_comp_val ; 
 int FUNC13 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15 (hashcat_ctx_t *hashcat_ctx)
{
  folder_config_t *folder_config = hashcat_ctx->folder_config;
  mask_ctx_t      *mask_ctx      = hashcat_ctx->mask_ctx;
  user_options_t  *user_options  = hashcat_ctx->user_options;

  char *shared_dir = folder_config->shared_dir;

  char *hcstat  = user_options->markov_hcstat2;
  u32   disable = user_options->markov_disable;
  u32   classic = user_options->markov_classic;

  hcstat_table_t *root_table_buf   = mask_ctx->root_table_buf;
  hcstat_table_t *markov_table_buf = mask_ctx->markov_table_buf;

  /**
   * Initialize hcstats
   */

  u64 *root_stats_buf = (u64 *) FUNC6 (SP_ROOT_CNT, sizeof (u64));

  u64 *root_stats_ptr = root_stats_buf;

  u64 *root_stats_buf_by_pos[SP_PW_MAX];

  for (int i = 0; i < SP_PW_MAX; i++)
  {
    root_stats_buf_by_pos[i] = root_stats_ptr;

    root_stats_ptr += CHARSIZ;
  }

  u64 *markov_stats_buf = (u64 *) FUNC6 (SP_MARKOV_CNT, sizeof (u64));

  u64 *markov_stats_ptr = markov_stats_buf;

  u64 *markov_stats_buf_by_key[SP_PW_MAX][CHARSIZ];

  for (int i = 0; i < SP_PW_MAX; i++)
  {
    for (int j = 0; j < CHARSIZ; j++)
    {
      markov_stats_buf_by_key[i][j] = markov_stats_ptr;

      markov_stats_ptr += CHARSIZ;
    }
  }

  /**
   * Load hcstats File
   */

  char hcstat_tmp[256];

  if (hcstat == NULL)
  {
    FUNC12 (hcstat_tmp, sizeof (hcstat_tmp), "%s/%s", shared_dir, SP_HCSTAT);

    hcstat = hcstat_tmp;
  }

  struct stat s;

  if (FUNC13 (hcstat, &s) == -1)
  {
    FUNC1 (hashcat_ctx, "%s: %s", hcstat, FUNC14 (errno));

    return -1;
  }

  HCFILE fp;

  if (FUNC3 (&fp, hcstat, "rb") == false)
  {
    FUNC1 (hashcat_ctx, "%s: %s", hcstat, FUNC14 (errno));

    return -1;
  }

  u8 *inbuf = (u8 *) FUNC8 (s.st_size);

  SizeT inlen = (SizeT) FUNC4 (inbuf, 1, s.st_size, &fp);

  if (inlen != (SizeT) s.st_size)
  {
    FUNC1 (hashcat_ctx, "%s: Could not read data.", hcstat);

    FUNC2 (&fp);

    FUNC7 (inbuf);

    return -1;
  }

  FUNC2 (&fp);

  u8 *outbuf = (u8 *) FUNC8 (SP_FILESZ);

  SizeT outlen = SP_FILESZ;

  const char props = 0x1c; // lzma properties constant, retrieved with 7z2hashcat

  const SRes res = FUNC5 (inbuf, &inlen, outbuf, &outlen, &props);

  if (res != SZ_OK)
  {
    FUNC1 (hashcat_ctx, "%s: Could not uncompress data.", hcstat);

    FUNC7 (inbuf);
    FUNC7 (outbuf);

    return -1;
  }

  if (outlen != SP_FILESZ)
  {
    FUNC1 (hashcat_ctx, "%s: Could not uncompress data.", hcstat);

    FUNC7 (inbuf);
    FUNC7 (outbuf);

    return -1;
  }

  u64 *ptr = (u64 *) outbuf;

  u64 v = *ptr++;
  u64 z = *ptr++;

  FUNC9 (root_stats_buf,   ptr, sizeof (u64) * SP_ROOT_CNT);   ptr += SP_ROOT_CNT;
  FUNC9 (markov_stats_buf, ptr, sizeof (u64) * SP_MARKOV_CNT); // ptr += SP_MARKOV_CNT;

  FUNC7 (inbuf);
  FUNC7 (outbuf);

  /**
   * switch endianess
   */

  v = FUNC0 (v);
  z = FUNC0 (z);

  for (int i = 0; i < SP_ROOT_CNT; i++)   root_stats_buf[i]   = FUNC0 (root_stats_buf[i]);
  for (int i = 0; i < SP_MARKOV_CNT; i++) markov_stats_buf[i] = FUNC0 (markov_stats_buf[i]);

  /**
   * verify header
   */

  if (v != SP_VERSION)
  {
    FUNC1 (hashcat_ctx, "%s: Invalid header", hcstat);

    return -1;
  }

  if (z != 0)
  {
    FUNC1 (hashcat_ctx, "%s: Invalid header", hcstat);

    return -1;
  }

  /**
   * Markov modifier of hcstat_table on user request
   */

  if (disable)
  {
    FUNC10 (root_stats_buf,   0, SP_ROOT_CNT   * sizeof (u64));
    FUNC10 (markov_stats_buf, 0, SP_MARKOV_CNT * sizeof (u64));
  }

  if (classic)
  {
    /* Add all stats to first position */

    for (int i = 1; i < SP_PW_MAX; i++)
    {
      u64 *out = root_stats_buf_by_pos[0];
      u64 *in  = root_stats_buf_by_pos[i];

      for (int j = 0; j < CHARSIZ; j++)
      {
        *out++ += *in++;
      }
    }

    for (int i = 1; i < SP_PW_MAX; i++)
    {
      u64 *out = markov_stats_buf_by_key[0][0];
      u64 *in  = markov_stats_buf_by_key[i][0];

      for (int j = 0; j < CHARSIZ; j++)
      {
        for (int k = 0; k < CHARSIZ; k++)
        {
          *out++ += *in++;
        }
      }
    }

    /* copy them to all pw_positions */

    for (int i = 1; i < SP_PW_MAX; i++)
    {
      FUNC9 (root_stats_buf_by_pos[i], root_stats_buf_by_pos[0], CHARSIZ * sizeof (u64));
    }

    for (int i = 1; i < SP_PW_MAX; i++)
    {
      FUNC9 (markov_stats_buf_by_key[i][0], markov_stats_buf_by_key[0][0], CHARSIZ * CHARSIZ * sizeof (u64));
    }
  }

  /**
   * Initialize tables
   */

  hcstat_table_t *root_table_ptr = root_table_buf;

  hcstat_table_t *root_table_buf_by_pos[SP_PW_MAX];

  for (int i = 0; i < SP_PW_MAX; i++)
  {
    root_table_buf_by_pos[i] = root_table_ptr;

    root_table_ptr += CHARSIZ;
  }

  hcstat_table_t *markov_table_ptr = markov_table_buf;

  hcstat_table_t *markov_table_buf_by_key[SP_PW_MAX][CHARSIZ];

  for (int i = 0; i < SP_PW_MAX; i++)
  {
    for (int j = 0; j < CHARSIZ; j++)
    {
      markov_table_buf_by_key[i][j] = markov_table_ptr;

      markov_table_ptr += CHARSIZ;
    }
  }

  /**
   * Convert hcstat to tables
   */

  for (int i = 0; i < SP_ROOT_CNT; i++)
  {
    u32 key = i % CHARSIZ;

    root_table_buf[i].key = key;
    root_table_buf[i].val = root_stats_buf[i];
  }

  for (int i = 0; i < SP_MARKOV_CNT; i++)
  {
    u32 key = i % CHARSIZ;

    markov_table_buf[i].key = key;
    markov_table_buf[i].val = markov_stats_buf[i];
  }

  FUNC7 (root_stats_buf);
  FUNC7 (markov_stats_buf);

  /**
   * Finally sort them
   */

  for (int i = 0; i < SP_PW_MAX; i++)
  {
    FUNC11 (root_table_buf_by_pos[i], CHARSIZ, sizeof (hcstat_table_t), sp_comp_val);
  }

  for (int i = 0; i < SP_PW_MAX; i++)
  {
    for (int j = 0; j < CHARSIZ; j++)
    {
      FUNC11 (markov_table_buf_by_key[i][j], CHARSIZ, sizeof (hcstat_table_t), sp_comp_val);
    }
  }

  return 0;
}