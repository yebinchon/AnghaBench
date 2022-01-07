
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int benchmark; int example_hashes; int keyspace; int left; int backend_info; int show; int stdout_flag; int speed_only; int progress_only; int usage; int version; scalar_t__ attack_mode; int * induction_dir; int session; } ;
typedef TYPE_1__ user_options_t ;
struct TYPE_8__ {int enabled; char* root_directory; } ;
typedef TYPE_2__ induct_ctx_t ;
struct TYPE_9__ {TYPE_1__* user_options; TYPE_2__* induct_ctx; TYPE_4__* folder_config; } ;
typedef TYPE_3__ hashcat_ctx_t ;
struct TYPE_10__ {int session_dir; } ;
typedef TYPE_4__ folder_config_t ;


 scalar_t__ ATTACK_MODE_STRAIGHT ;
 scalar_t__ ENOENT ;
 scalar_t__ ENOTEMPTY ;
 int INDUCT_DIR ;
 scalar_t__ errno ;
 int event_log_error (TYPE_3__*,char*,char*,char*,...) ;
 int hc_asprintf (char**,char*,int ,int ,int) ;
 int hc_mkdir (char*,int) ;
 int hcfree (char*) ;
 char* hcstrdup (int *) ;
 scalar_t__ rename (char*,char*) ;
 int rmdir (char*) ;
 int strerror (scalar_t__) ;
 scalar_t__ time (int *) ;

int induct_ctx_init (hashcat_ctx_t *hashcat_ctx)
{
  folder_config_t *folder_config = hashcat_ctx->folder_config;
  induct_ctx_t *induct_ctx = hashcat_ctx->induct_ctx;
  user_options_t *user_options = hashcat_ctx->user_options;

  induct_ctx->enabled = 0;

  if (user_options->benchmark == 1) return 0;
  if (user_options->example_hashes == 1) return 0;
  if (user_options->keyspace == 1) return 0;
  if (user_options->left == 1) return 0;
  if (user_options->backend_info == 1) return 0;
  if (user_options->show == 1) return 0;
  if (user_options->stdout_flag == 1) return 0;
  if (user_options->speed_only == 1) return 0;
  if (user_options->progress_only == 1) return 0;
  if (user_options->usage == 1) return 0;
  if (user_options->version == 1) return 0;

  if (user_options->attack_mode != ATTACK_MODE_STRAIGHT) return 0;

  induct_ctx->enabled = 1;

  if (user_options->induction_dir == ((void*)0))
  {
    char *root_directory;

    hc_asprintf (&root_directory, "%s/%s.%s", folder_config->session_dir, user_options->session, INDUCT_DIR);

    if (rmdir (root_directory) == -1)
    {
      if (errno == ENOENT)
      {

      }
      else if (errno == ENOTEMPTY)
      {
        char *root_directory_mv;

        hc_asprintf (&root_directory_mv, "%s/%s.induct.%d", folder_config->session_dir, user_options->session, (int) time (((void*)0)));

        if (rename (root_directory, root_directory_mv) != 0)
        {
          event_log_error (hashcat_ctx, "Rename directory %s to %s: %s", root_directory, root_directory_mv, strerror (errno));

          return -1;
        }

        hcfree (root_directory_mv);
      }
      else
      {
        event_log_error (hashcat_ctx, "%s: %s", root_directory, strerror (errno));

        return -1;
      }
    }

    if (hc_mkdir (root_directory, 0700) == -1)
    {
      event_log_error (hashcat_ctx, "%s: %s", root_directory, strerror (errno));

      return -1;
    }

    induct_ctx->root_directory = root_directory;
  }
  else
  {
    induct_ctx->root_directory = hcstrdup (user_options->induction_dir);
  }

  return 0;
}
