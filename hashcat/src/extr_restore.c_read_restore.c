
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_13__ {int argc; char** argv; char* cwd; } ;
typedef TYPE_1__ restore_data_t ;
struct TYPE_14__ {int enabled; char* eff_restore_file; TYPE_1__* rd; } ;
typedef TYPE_2__ restore_ctx_t ;
struct TYPE_15__ {TYPE_4__* folder_config; TYPE_2__* restore_ctx; } ;
typedef TYPE_3__ hashcat_ctx_t ;
struct TYPE_16__ {char* install_dir; char* shared_dir; int cwd; } ;
typedef TYPE_4__ folder_config_t ;
typedef int HCFILE ;


 scalar_t__ HCBUFSIZ_LARGE ;
 scalar_t__ chdir (char*) ;
 int errno ;
 int event_log_error (TYPE_3__*,char*,char*,...) ;
 int event_log_warning (TYPE_3__*,char*,...) ;
 int folder_config_destroy (TYPE_3__*) ;
 int folder_config_init (TYPE_3__*,char*,char*) ;
 int hc_fclose (int *) ;
 int * hc_fgets (char*,scalar_t__,int *) ;
 int hc_fopen (int *,char*,char*) ;
 int hc_fread (TYPE_1__*,int,int,int *) ;
 int hc_path_exist (char*) ;
 int hc_path_is_directory (char*) ;
 scalar_t__ hccalloc (int,int) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (scalar_t__) ;
 void* hcstrdup (char*) ;
 int pidfile_ctx_destroy (TYPE_3__*) ;
 int pidfile_ctx_init (TYPE_3__*) ;
 int strerror (int ) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static int read_restore (hashcat_ctx_t *hashcat_ctx)
{
  restore_ctx_t *restore_ctx = hashcat_ctx->restore_ctx;
  folder_config_t *folder_config = hashcat_ctx->folder_config;

  if (restore_ctx->enabled == 0) return 0;

  char *eff_restore_file = restore_ctx->eff_restore_file;

  HCFILE fp;

  if (hc_fopen (&fp, eff_restore_file, "rb") == 0)
  {
    event_log_error (hashcat_ctx, "Restore file '%s': %s", eff_restore_file, strerror (errno));

    return -1;
  }

  restore_data_t *rd = restore_ctx->rd;

  if (hc_fread (rd, sizeof (restore_data_t), 1, &fp) != 1)
  {
    event_log_error (hashcat_ctx, "Cannot read %s", eff_restore_file);

    hc_fclose (&fp);

    return -1;
  }



  if (rd->argc < 1)
  {
    event_log_error (hashcat_ctx, "Unusually low number of arguments (argc) within restore file %s", eff_restore_file);

    hc_fclose (&fp);

    return -1;
  }

  if (rd->argc > 250)
  {
    event_log_error (hashcat_ctx, "Unusually high number of arguments (argc) within restore file %s", eff_restore_file);

    hc_fclose (&fp);

    return -1;
  }

  rd->argv = (char **) hccalloc (rd->argc, sizeof (char *));

  char *buf = (char *) hcmalloc (HCBUFSIZ_LARGE);

  for (u32 i = 0; i < rd->argc; i++)
  {
    if (hc_fgets (buf, HCBUFSIZ_LARGE - 1, &fp) == ((void*)0))
    {
      event_log_error (hashcat_ctx, "Cannot read %s", eff_restore_file);

      hc_fclose (&fp);

      hcfree (buf);

      return -1;
    }

    size_t len = strlen (buf);

    if (len) buf[len - 1] = 0;

    rd->argv[i] = hcstrdup (buf);
  }

  hcfree (buf);

  hc_fclose (&fp);

  if (hc_path_exist (rd->cwd) == 0)
  {
    event_log_error (hashcat_ctx, "%s: %s", rd->cwd, strerror (errno));

    return -1;
  }

  if (hc_path_is_directory (rd->cwd) == 0)
  {
    event_log_error (hashcat_ctx, "%s: %s", rd->cwd, strerror (errno));

    return -1;
  }

  if (strncmp (rd->cwd, folder_config->cwd, sizeof (rd->cwd)) != 0)
  {
    event_log_warning (hashcat_ctx, "Changing current working directory to '%s'", rd->cwd);
    event_log_warning (hashcat_ctx, ((void*)0));

    if (chdir (rd->cwd))
    {
      event_log_error (hashcat_ctx, "Directory '%s' needed to restore the session was not found.", rd->cwd);

      event_log_warning (hashcat_ctx, "Either create the directory, or update the directory within the .restore file.");
      event_log_warning (hashcat_ctx, "Restore files can be analyzed and modified with analyze_hc_restore.pl:");
      event_log_warning (hashcat_ctx, "    https://github.com/philsmd/analyze_hc_restore");
      event_log_warning (hashcat_ctx, "Directory must contain all files and folders from the original command line.");
      event_log_warning (hashcat_ctx, ((void*)0));

      return -1;
    }
    char *install_folder = hcstrdup (folder_config->install_dir);
    char *shared_folder = hcstrdup (folder_config->shared_dir);

    folder_config_destroy (hashcat_ctx);

    const int rc_folder_config_init = folder_config_init (hashcat_ctx, install_folder, shared_folder);

    hcfree (install_folder);
    hcfree (shared_folder);

    if (rc_folder_config_init == -1) return -1;





    pidfile_ctx_destroy (hashcat_ctx);

    if (pidfile_ctx_init (hashcat_ctx) == -1) return -1;
  }

  return 0;
}
