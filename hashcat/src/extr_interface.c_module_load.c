
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int * module_init; int * module_handle; } ;
typedef TYPE_1__ module_ctx_t ;
struct TYPE_8__ {int * folder_config; } ;
typedef TYPE_2__ hashcat_ctx_t ;
typedef int folder_config_t ;
typedef int * MODULE_INIT ;


 int HCBUFSIZ_TINY ;
 char* dlerror () ;
 int event_log_error (TYPE_2__*,char*,char*) ;
 int * hc_dlopen (char*) ;
 scalar_t__ hc_dlsym (int *,char*) ;
 int hcfree (char*) ;
 scalar_t__ hcmalloc (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int module_filename (int const*,int const,char*,int ) ;

bool module_load (hashcat_ctx_t *hashcat_ctx, module_ctx_t *module_ctx, const u32 hash_mode)
{
  const folder_config_t *folder_config = hashcat_ctx->folder_config;

  memset (module_ctx, 0, sizeof (module_ctx_t));

  char *module_file = (char *) hcmalloc (HCBUFSIZ_TINY);

  module_filename (folder_config, hash_mode, module_file, HCBUFSIZ_TINY);

  module_ctx->module_handle = hc_dlopen (module_file);

  if (module_ctx->module_handle == ((void*)0))
  {



    event_log_error (hashcat_ctx, "%s", dlerror ());


    return 0;
  }

  module_ctx->module_init = (MODULE_INIT) hc_dlsym (module_ctx->module_handle, "module_init");

  if (module_ctx->module_init == ((void*)0))
  {
    event_log_error (hashcat_ctx, "Cannot load symbol 'module_init' in module %s", module_file);

    return 0;
  }

  hcfree (module_file);

  return 1;
}
