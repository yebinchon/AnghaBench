
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* folder_config; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_6__ {int install_dir; int cwd; int cpath_real; } ;
typedef TYPE_2__ folder_config_t ;


 int hcfree (int ) ;
 int memset (TYPE_2__*,int ,int) ;

void folder_config_destroy (hashcat_ctx_t *hashcat_ctx)
{
  folder_config_t *folder_config = hashcat_ctx->folder_config;

  hcfree (folder_config->cpath_real);
  hcfree (folder_config->cwd);
  hcfree (folder_config->install_dir);

  memset (folder_config, 0, sizeof (folder_config_t));
}
