
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int example_hashes; int left; int backend_info; int show; int usage; int version; scalar_t__ attack_mode; int slow_candidates; char* rule_buf_l; char* rule_buf_r; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_11__ {char** hc_workv; int rule_len_r; int rule_len_l; } ;
typedef TYPE_2__ user_options_extra_t ;
typedef scalar_t__ u64 ;
typedef int u32 ;
struct TYPE_12__ {int bfs_cnt; } ;
typedef TYPE_3__ mask_ctx_t ;
struct TYPE_13__ {int opti_type; } ;
typedef TYPE_4__ hashconfig_t ;
struct TYPE_14__ {TYPE_3__* mask_ctx; TYPE_1__* user_options; TYPE_2__* user_options_extra; TYPE_4__* hashconfig; TYPE_6__* combinator_ctx; } ;
typedef TYPE_5__ hashcat_ctx_t ;
struct TYPE_15__ {int enabled; int combs_cnt; char* dict1; char* dict2; void* combs_mode; } ;
typedef TYPE_6__ combinator_ctx_t ;
typedef int HCFILE ;


 scalar_t__ ATTACK_MODE_COMBI ;
 scalar_t__ ATTACK_MODE_HYBRID1 ;
 scalar_t__ ATTACK_MODE_HYBRID2 ;
 void* COMBINATOR_MODE_BASE_LEFT ;
 void* COMBINATOR_MODE_BASE_RIGHT ;
 int OPTI_TYPE_OPTIMIZED_KERNEL ;
 int count_words (TYPE_5__*,int *,char*,scalar_t__*) ;
 int errno ;
 int event_log_error (TYPE_5__*,char*,char*,...) ;
 int hc_fclose (int *) ;
 int hc_fopen (int *,char*,char*) ;
 int hc_path_is_file (char*) ;
 int strerror (int ) ;

int combinator_ctx_init (hashcat_ctx_t *hashcat_ctx)
{
  combinator_ctx_t *combinator_ctx = hashcat_ctx->combinator_ctx;
  hashconfig_t *hashconfig = hashcat_ctx->hashconfig;
  user_options_extra_t *user_options_extra = hashcat_ctx->user_options_extra;
  user_options_t *user_options = hashcat_ctx->user_options;

  combinator_ctx->enabled = 0;

  if (user_options->example_hashes == 1) return 0;
  if (user_options->left == 1) return 0;
  if (user_options->backend_info == 1) return 0;
  if (user_options->show == 1) return 0;
  if (user_options->usage == 1) return 0;
  if (user_options->version == 1) return 0;

  if ((user_options->attack_mode != ATTACK_MODE_COMBI)
   && (user_options->attack_mode != ATTACK_MODE_HYBRID1)
   && (user_options->attack_mode != ATTACK_MODE_HYBRID2)) return 0;

  combinator_ctx->enabled = 1;

  if (user_options->slow_candidates == 1)
  {


    if (user_options->attack_mode == ATTACK_MODE_COMBI)
    {


      char *dictfile1 = user_options_extra->hc_workv[0];
      char *dictfile2 = user_options_extra->hc_workv[1];




      if (hc_path_is_file (dictfile1) == 0)
      {
        event_log_error (hashcat_ctx, "%s: Not a regular file.", dictfile1);

        return -1;
      }

      if (hc_path_is_file (dictfile2) == 0)
      {
        event_log_error (hashcat_ctx, "%s: Not a regular file.", dictfile2);

        return -1;
      }

      HCFILE fp1;
      HCFILE fp2;

      if (hc_fopen (&fp1, dictfile1, "rb") == 0)
      {
        event_log_error (hashcat_ctx, "%s: %s", dictfile1, strerror (errno));

        return -1;
      }

      if (hc_fopen (&fp2, dictfile2, "rb") == 0)
      {
        event_log_error (hashcat_ctx, "%s: %s", dictfile2, strerror (errno));

        hc_fclose (&fp1);

        return -1;
      }

      combinator_ctx->combs_cnt = 1;

      u64 words1_cnt = 0;

      const int rc1 = count_words (hashcat_ctx, &fp1, dictfile1, &words1_cnt);

      if (rc1 == -1)
      {
        event_log_error (hashcat_ctx, "Integer overflow detected in keyspace of wordlist: %s", dictfile1);

        hc_fclose (&fp1);
        hc_fclose (&fp2);

        return -1;
      }

      if (words1_cnt == 0)
      {
        event_log_error (hashcat_ctx, "%s: empty file.", dictfile1);

        hc_fclose (&fp1);
        hc_fclose (&fp2);

        return -1;
      }

      combinator_ctx->combs_cnt = 1;

      u64 words2_cnt = 0;

      const int rc2 = count_words (hashcat_ctx, &fp2, dictfile2, &words2_cnt);

      hc_fclose (&fp1);
      hc_fclose (&fp2);

      if (rc2 == -1)
      {
        event_log_error (hashcat_ctx, "Integer overflow detected in keyspace of wordlist: %s", dictfile2);

        return -1;
      }

      if (words2_cnt == 0)
      {
        event_log_error (hashcat_ctx, "%s: empty file.", dictfile2);

        return -1;
      }

      combinator_ctx->dict1 = dictfile1;
      combinator_ctx->dict2 = dictfile2;

      combinator_ctx->combs_mode = COMBINATOR_MODE_BASE_LEFT;
      combinator_ctx->combs_cnt = words2_cnt;
    }
  }
  else
  {
    if (hashconfig->opti_type & OPTI_TYPE_OPTIMIZED_KERNEL)
    {
      if (user_options->attack_mode == ATTACK_MODE_COMBI)
      {


        char *dictfile1 = user_options_extra->hc_workv[0];
        char *dictfile2 = user_options_extra->hc_workv[1];




        if (hc_path_is_file (dictfile1) == 0)
        {
          event_log_error (hashcat_ctx, "%s: Not a regular file.", dictfile1);

          return -1;
        }

        if (hc_path_is_file (dictfile2) == 0)
        {
          event_log_error (hashcat_ctx, "%s: Not a regular file.", dictfile2);

          return -1;
        }

        HCFILE fp1;
        HCFILE fp2;

        if (hc_fopen (&fp1, dictfile1, "rb") == 0)
        {
          event_log_error (hashcat_ctx, "%s: %s", dictfile1, strerror (errno));

          return -1;
        }

        if (hc_fopen (&fp2, dictfile2, "rb") == 0)
        {
          event_log_error (hashcat_ctx, "%s: %s", dictfile2, strerror (errno));

          hc_fclose (&fp1);

          return -1;
        }

        combinator_ctx->combs_cnt = 1;

        u64 words1_cnt = 0;

        const int rc1 = count_words (hashcat_ctx, &fp1, dictfile1, &words1_cnt);

        if (rc1 == -1)
        {
          event_log_error (hashcat_ctx, "Integer overflow detected in keyspace of wordlist: %s", dictfile1);

          hc_fclose (&fp1);
          hc_fclose (&fp2);

          return -1;
        }

        if (words1_cnt == 0)
        {
          event_log_error (hashcat_ctx, "%s: empty file.", dictfile1);

          hc_fclose (&fp1);
          hc_fclose (&fp2);

          return -1;
        }

        combinator_ctx->combs_cnt = 1;

        u64 words2_cnt = 0;

        const int rc2 = count_words (hashcat_ctx, &fp2, dictfile2, &words2_cnt);

        hc_fclose (&fp1);
        hc_fclose (&fp2);

        if (rc2 == -1)
        {
          event_log_error (hashcat_ctx, "Integer overflow detected in keyspace of wordlist: %s", dictfile2);

          return -1;
        }

        if (words2_cnt == 0)
        {
          event_log_error (hashcat_ctx, "%s: empty file.", dictfile2);

          return -1;
        }

        combinator_ctx->dict1 = dictfile1;
        combinator_ctx->dict2 = dictfile2;

        if (words1_cnt >= words2_cnt)
        {
          combinator_ctx->combs_mode = COMBINATOR_MODE_BASE_LEFT;
          combinator_ctx->combs_cnt = words2_cnt;
        }
        else
        {
          combinator_ctx->combs_mode = COMBINATOR_MODE_BASE_RIGHT;
          combinator_ctx->combs_cnt = words1_cnt;



          const char *tmpc = user_options->rule_buf_l;

          user_options->rule_buf_l = user_options->rule_buf_r;
          user_options->rule_buf_r = tmpc;

          u32 tmpi = user_options_extra->rule_len_l;

          user_options_extra->rule_len_l = user_options_extra->rule_len_r;
          user_options_extra->rule_len_r = tmpi;
        }
      }
      else if (user_options->attack_mode == ATTACK_MODE_HYBRID1)
      {
        combinator_ctx->combs_mode = COMBINATOR_MODE_BASE_LEFT;
      }
      else if (user_options->attack_mode == ATTACK_MODE_HYBRID2)
      {
        combinator_ctx->combs_mode = COMBINATOR_MODE_BASE_RIGHT;
      }
    }
    else
    {


      if (user_options->attack_mode == ATTACK_MODE_COMBI)
      {


        char *dictfile1 = user_options_extra->hc_workv[0];
        char *dictfile2 = user_options_extra->hc_workv[1];




        if (hc_path_is_file (dictfile1) == 0)
        {
          event_log_error (hashcat_ctx, "%s: Not a regular file.", dictfile1);

          return -1;
        }

        if (hc_path_is_file (dictfile2) == 0)
        {
          event_log_error (hashcat_ctx, "%s: Not a regular file.", dictfile2);

          return -1;
        }

        HCFILE fp1;
        HCFILE fp2;

        if (hc_fopen (&fp1, dictfile1, "rb") == 0)
        {
          event_log_error (hashcat_ctx, "%s: %s", dictfile1, strerror (errno));

          return -1;
        }

        if (hc_fopen (&fp2, dictfile2, "rb") == 0)
        {
          event_log_error (hashcat_ctx, "%s: %s", dictfile2, strerror (errno));

          hc_fclose (&fp1);

          return -1;
        }

        combinator_ctx->combs_cnt = 1;

        u64 words1_cnt = 0;

        const int rc1 = count_words (hashcat_ctx, &fp1, dictfile1, &words1_cnt);

        if (rc1 == -1)
        {
          event_log_error (hashcat_ctx, "Integer overflow detected in keyspace of wordlist: %s", dictfile1);

          hc_fclose (&fp1);
          hc_fclose (&fp2);

          return -1;
        }

        if (words1_cnt == 0)
        {
          event_log_error (hashcat_ctx, "%s: empty file.", dictfile1);

          hc_fclose (&fp1);
          hc_fclose (&fp2);

          return -1;
        }

        combinator_ctx->combs_cnt = 1;

        u64 words2_cnt = 0;

        const int rc2 = count_words (hashcat_ctx, &fp2, dictfile2, &words2_cnt);

        hc_fclose (&fp1);
        hc_fclose (&fp2);

        if (rc2 == -1)
        {
          event_log_error (hashcat_ctx, "Integer overflow detected in keyspace of wordlist: %s", dictfile2);

          return -1;
        }

        if (words2_cnt == 0)
        {
          event_log_error (hashcat_ctx, "%s: empty file.", dictfile2);

          return -1;
        }

        combinator_ctx->dict1 = dictfile1;
        combinator_ctx->dict2 = dictfile2;

        combinator_ctx->combs_mode = COMBINATOR_MODE_BASE_LEFT;
        combinator_ctx->combs_cnt = words2_cnt;
      }
      else if (user_options->attack_mode == ATTACK_MODE_HYBRID1)
      {
        combinator_ctx->combs_mode = COMBINATOR_MODE_BASE_LEFT;
      }
      else if (user_options->attack_mode == ATTACK_MODE_HYBRID2)
      {
        mask_ctx_t *mask_ctx = hashcat_ctx->mask_ctx;

        char *dictfile = user_options_extra->hc_workv[1];



        if (hc_path_is_file (dictfile) == 0)
        {
          event_log_error (hashcat_ctx, "%s: Not a regular file.", dictfile);

          return -1;
        }

        HCFILE fp;

        if (hc_fopen (&fp, dictfile, "rb") == 0)
        {
          event_log_error (hashcat_ctx, "%s: %s", dictfile, strerror (errno));

          return -1;
        }

        mask_ctx->bfs_cnt = 1;

        u64 words_cnt = 0;

        const int rc = count_words (hashcat_ctx, &fp, dictfile, &words_cnt);

        hc_fclose (&fp);

        if (rc == -1)
        {
          event_log_error (hashcat_ctx, "Integer overflow detected in keyspace of wordlist: %s", dictfile);

          return -1;
        }

        combinator_ctx->combs_cnt = words_cnt;
        combinator_ctx->combs_mode = COMBINATOR_MODE_BASE_LEFT;
      }
    }
  }

  return 0;
}
