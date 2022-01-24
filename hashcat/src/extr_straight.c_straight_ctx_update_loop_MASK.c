#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ attack_mode; size_t rp_files_cnt; int /*<<< orphan*/ * rp_files; } ;
typedef  TYPE_1__ user_options_t ;
struct TYPE_13__ {scalar_t__ wordlist_mode; } ;
typedef  TYPE_2__ user_options_extra_t ;
typedef  size_t u32 ;
struct TYPE_14__ {size_t dicts_pos; int /*<<< orphan*/  dict; int /*<<< orphan*/ * dicts; } ;
typedef  TYPE_3__ straight_ctx_t ;
struct TYPE_15__ {scalar_t__ words_cnt; } ;
typedef  TYPE_4__ status_ctx_t ;
struct TYPE_16__ {int /*<<< orphan*/  mask; } ;
typedef  TYPE_5__ mask_ctx_t ;
typedef  int /*<<< orphan*/  logfile_ctx_t ;
struct TYPE_17__ {size_t induction_dictionaries_pos; int /*<<< orphan*/ * induction_dictionaries; scalar_t__ induction_dictionaries_cnt; } ;
typedef  TYPE_6__ induct_ctx_t ;
struct TYPE_18__ {TYPE_1__* user_options; TYPE_2__* user_options_extra; TYPE_3__* straight_ctx; TYPE_4__* status_ctx; TYPE_5__* mask_ctx; int /*<<< orphan*/ * logfile_ctx; TYPE_6__* induct_ctx; TYPE_8__* combinator_ctx; } ;
typedef  TYPE_7__ hashcat_ctx_t ;
struct TYPE_19__ {scalar_t__ combs_mode; int /*<<< orphan*/  dict2; int /*<<< orphan*/  dict1; } ;
typedef  TYPE_8__ combinator_ctx_t ;
typedef  int /*<<< orphan*/  HCFILE ;

/* Variables and functions */
 scalar_t__ ATTACK_MODE_BF ; 
 scalar_t__ ATTACK_MODE_COMBI ; 
 scalar_t__ ATTACK_MODE_HYBRID1 ; 
 scalar_t__ ATTACK_MODE_HYBRID2 ; 
 scalar_t__ ATTACK_MODE_STRAIGHT ; 
 scalar_t__ COMBINATOR_MODE_BASE_LEFT ; 
 scalar_t__ COMBINATOR_MODE_BASE_RIGHT ; 
 scalar_t__ WL_MODE_FILE ; 
 int FUNC0 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8 (hashcat_ctx_t *hashcat_ctx)
{
  combinator_ctx_t     *combinator_ctx     = hashcat_ctx->combinator_ctx;
  induct_ctx_t         *induct_ctx         = hashcat_ctx->induct_ctx;
  logfile_ctx_t        *logfile_ctx        = hashcat_ctx->logfile_ctx;
  mask_ctx_t           *mask_ctx           = hashcat_ctx->mask_ctx;
  status_ctx_t         *status_ctx         = hashcat_ctx->status_ctx;
  straight_ctx_t       *straight_ctx       = hashcat_ctx->straight_ctx;
  user_options_extra_t *user_options_extra = hashcat_ctx->user_options_extra;
  user_options_t       *user_options       = hashcat_ctx->user_options;

  if (user_options->attack_mode == ATTACK_MODE_STRAIGHT)
  {
    if (user_options_extra->wordlist_mode == WL_MODE_FILE)
    {
      if (induct_ctx->induction_dictionaries_cnt)
      {
        straight_ctx->dict = induct_ctx->induction_dictionaries[induct_ctx->induction_dictionaries_pos];
      }
      else
      {
        straight_ctx->dict = straight_ctx->dicts[straight_ctx->dicts_pos];
      }

      FUNC5 (straight_ctx->dict);

      for (u32 i = 0; i < user_options->rp_files_cnt; i++)
      {
        FUNC6 ("rulefile", user_options->rp_files[i]);
      }

      HCFILE fp;

      if (FUNC3 (&fp, straight_ctx->dict, "rb") == false)
      {
        FUNC1 (hashcat_ctx, "%s: %s", straight_ctx->dict, FUNC7 (errno));

        return -1;
      }

      const int rc = FUNC0 (hashcat_ctx, &fp, straight_ctx->dict, &status_ctx->words_cnt);

      FUNC2 (&fp);

      if (rc == -1)
      {
        FUNC1 (hashcat_ctx, "Integer overflow detected in keyspace of wordlist: %s", straight_ctx->dict);

        return -1;
      }

      if (status_ctx->words_cnt == 0)
      {
        FUNC4 ("STOP");

        return 0;
      }
    }
  }
  else if (user_options->attack_mode == ATTACK_MODE_COMBI)
  {
    FUNC5 (combinator_ctx->dict1);
    FUNC5 (combinator_ctx->dict2);

    if (combinator_ctx->combs_mode == COMBINATOR_MODE_BASE_LEFT)
    {
      HCFILE fp;

      if (FUNC3 (&fp, combinator_ctx->dict1, "rb") == false)
      {
        FUNC1 (hashcat_ctx, "%s: %s", combinator_ctx->dict1, FUNC7 (errno));

        return -1;
      }

      const int rc = FUNC0 (hashcat_ctx, &fp, combinator_ctx->dict1, &status_ctx->words_cnt);

      FUNC2 (&fp);

      if (rc == -1)
      {
        FUNC1 (hashcat_ctx, "Integer overflow detected in keyspace of wordlist: %s", combinator_ctx->dict1);

        return -1;
      }
    }
    else if (combinator_ctx->combs_mode == COMBINATOR_MODE_BASE_RIGHT)
    {
      HCFILE fp;

      if (FUNC3 (&fp, combinator_ctx->dict2, "rb") == false)
      {
        FUNC1 (hashcat_ctx, "%s: %s", combinator_ctx->dict2, FUNC7 (errno));

        return -1;
      }

      const int rc = FUNC0 (hashcat_ctx, &fp, combinator_ctx->dict2, &status_ctx->words_cnt);

      FUNC2 (&fp);

      if (rc == -1)
      {
        FUNC1 (hashcat_ctx, "Integer overflow detected in keyspace of wordlist: %s", combinator_ctx->dict2);

        return -1;
      }
    }

    if (status_ctx->words_cnt == 0)
    {
      FUNC4 ("STOP");

      return 0;
    }
  }
  else if (user_options->attack_mode == ATTACK_MODE_BF)
  {
    FUNC5 (mask_ctx->mask);
  }
  else if ((user_options->attack_mode == ATTACK_MODE_HYBRID1) || (user_options->attack_mode == ATTACK_MODE_HYBRID2))
  {
    if (induct_ctx->induction_dictionaries_cnt)
    {
      straight_ctx->dict = induct_ctx->induction_dictionaries[induct_ctx->induction_dictionaries_pos];
    }
    else
    {
      straight_ctx->dict = straight_ctx->dicts[straight_ctx->dicts_pos];
    }

    FUNC5 (straight_ctx->dict);
    FUNC5 (mask_ctx->mask);

    HCFILE fp;

    if (FUNC3 (&fp, straight_ctx->dict, "rb") == false)
    {
      FUNC1 (hashcat_ctx, "%s: %s", straight_ctx->dict, FUNC7 (errno));

      return -1;
    }

    const int rc = FUNC0 (hashcat_ctx, &fp, straight_ctx->dict, &status_ctx->words_cnt);

    FUNC2 (&fp);

    if (rc == -1)
    {
      FUNC1 (hashcat_ctx, "Integer overflow detected in keyspace of wordlist: %s", straight_ctx->dict);

      return -1;
    }

    if (status_ctx->words_cnt == 0)
    {
      FUNC4 ("STOP");

      return 0;
    }
  }

  return 0;
}