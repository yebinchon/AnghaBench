
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int brain_server; int version; int usage; int example_hashes; int backend_info; int brain_session_whitelist; int brain_password; int brain_port; int brain_host; } ;
typedef TYPE_1__ user_options_t ;
typedef int time_t ;
struct TYPE_20__ {TYPE_1__* user_options; } ;
typedef TYPE_2__ hashcat_ctx_t ;


 int COMPTIME ;
 char* INSTALL_FOLDER ;
 char* SHARED_FOLDER ;
 char* VERSION_TAG ;
 int backend_info (TYPE_2__*) ;
 int backend_info_compact (TYPE_2__*) ;
 int brain_server (int ,int ,int ,int ) ;
 int event ;
 int example_hashes (TYPE_2__*) ;
 int goodbye_screen (TYPE_2__*,int const,int const) ;
 int hashcat_destroy (TYPE_2__*) ;
 int hashcat_init (TYPE_2__*,int ) ;
 int hashcat_session_destroy (TYPE_2__*) ;
 int hashcat_session_execute (TYPE_2__*) ;
 scalar_t__ hashcat_session_init (TYPE_2__*,char const*,char const*,int,char**,int ) ;
 int hcfree (TYPE_2__*) ;
 scalar_t__ hcmalloc (int) ;
 int printf (char*,char*) ;
 int setup_console () ;
 int time (int *) ;
 int usage_big_print (TYPE_2__*) ;
 int user_options_getopt (TYPE_2__*,int,char**) ;
 int user_options_info (TYPE_2__*) ;
 int user_options_init (TYPE_2__*) ;
 int user_options_sanity (TYPE_2__*) ;
 int welcome_screen (TYPE_2__*,char*) ;

int main (int argc, char **argv)
{


  setup_console ();

  const time_t proc_start = time (((void*)0));



  hashcat_ctx_t *hashcat_ctx = (hashcat_ctx_t *) hcmalloc (sizeof (hashcat_ctx_t));

  if (hashcat_init (hashcat_ctx, event) == -1)
  {
    hcfree (hashcat_ctx);

    return -1;
  }


  const char *install_folder = ((void*)0);
  const char *shared_folder = ((void*)0);
  if (user_options_init (hashcat_ctx) == -1)
  {
    hcfree (hashcat_ctx);

    return -1;
  }



  if (user_options_getopt (hashcat_ctx, argc, argv) == -1)
  {
    hcfree (hashcat_ctx);

    return -1;
  }

  if (user_options_sanity (hashcat_ctx) == -1)
  {
    hcfree (hashcat_ctx);

    return -1;
  }



  user_options_t *user_options = hashcat_ctx->user_options;
  if (user_options->version == 1)
  {
    printf ("%s\n", VERSION_TAG);

    hcfree (hashcat_ctx);

    return 0;
  }



  welcome_screen (hashcat_ctx, VERSION_TAG);

  int rc_final = -1;

  if (hashcat_session_init (hashcat_ctx, install_folder, shared_folder, argc, argv, COMPTIME) == 0)
  {
    if (user_options->usage == 1)
    {
      usage_big_print (hashcat_ctx);

      rc_final = 0;
    }
    else if (user_options->example_hashes == 1)
    {
      example_hashes (hashcat_ctx);

      rc_final = 0;
    }
    else if (user_options->backend_info == 1)
    {


      backend_info (hashcat_ctx);

      rc_final = 0;
    }
    else
    {


      backend_info_compact (hashcat_ctx);

      user_options_info (hashcat_ctx);

      rc_final = hashcat_session_execute (hashcat_ctx);
    }
  }



  hashcat_session_destroy (hashcat_ctx);



  const time_t proc_stop = time (((void*)0));

  goodbye_screen (hashcat_ctx, proc_start, proc_stop);

  hashcat_destroy (hashcat_ctx);

  hcfree (hashcat_ctx);

  return rc_final;
}
