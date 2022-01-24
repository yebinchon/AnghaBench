#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int (* module_hash_encode_status ) (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int const) ;} ;
typedef  TYPE_1__ module_ctx_t ;
struct TYPE_12__ {int digests_cnt; int /*<<< orphan*/ * hashfile; int /*<<< orphan*/  hook_salts_buf; int /*<<< orphan*/  esalts_buf; int /*<<< orphan*/  salts_buf; int /*<<< orphan*/  digests_buf; } ;
typedef  TYPE_2__ hashes_t ;
struct TYPE_13__ {int opts_type; } ;
typedef  TYPE_3__ hashconfig_t ;
struct TYPE_14__ {TYPE_1__* module_ctx; TYPE_2__* hashes; TYPE_3__* hashconfig; } ;
typedef  TYPE_4__ hashcat_ctx_t ;

/* Variables and functions */
 int const HCBUFSIZ_LARGE ; 
 int FUNC0 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int const) ; 
 int OPTS_TYPE_BINARY_HASHFILE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (TYPE_3__*,TYPE_2__*,TYPE_1__*,char*,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int const) ; 
 char* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int const) ; 
 char* FUNC7 (char*) ; 
 int FUNC8 (TYPE_3__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int const) ; 

char *FUNC9 (const hashcat_ctx_t *hashcat_ctx)
{
  const hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  const hashes_t     *hashes     = hashcat_ctx->hashes;
  const module_ctx_t *module_ctx = hashcat_ctx->module_ctx;

  if ((hashes->digests_cnt == 1) || (hashes->hashfile == NULL))
  {
    if (module_ctx->module_hash_encode_status != MODULE_DEFAULT)
    {
      char *tmp_buf = (char *) FUNC4 (HCBUFSIZ_LARGE);

      const int tmp_len = module_ctx->module_hash_encode_status (hashconfig, hashes->digests_buf, hashes->salts_buf, hashes->esalts_buf, hashes->hook_salts_buf, NULL, tmp_buf, HCBUFSIZ_LARGE);

      char *tmp_buf2 = (char *) FUNC4 (tmp_len + 1);

      FUNC6 (tmp_buf2, tmp_buf, tmp_len);

      tmp_buf2[tmp_len] = 0;

      FUNC2 (tmp_buf);

      return tmp_buf2;
    }

    if (hashconfig->opts_type & OPTS_TYPE_BINARY_HASHFILE)
    {
      return FUNC5 (hashes->hashfile);
    }

    char *tmp_buf = (char *) FUNC4 (HCBUFSIZ_LARGE);

    const int tmp_len = FUNC3 (hashcat_ctx->hashconfig, hashcat_ctx->hashes, hashcat_ctx->module_ctx, tmp_buf, HCBUFSIZ_LARGE, 0, 0);

    tmp_buf[tmp_len] = 0;

    FUNC1 (tmp_buf, 19, 6); // 19 = strlen ("Hash.Target......: ")

    char *tmp_buf2 = FUNC7 (tmp_buf);

    FUNC2 (tmp_buf);

    return tmp_buf2;
  }

  return FUNC5 (hashes->hashfile);
}