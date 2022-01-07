
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* shared_dir; } ;
typedef TYPE_1__ folder_config_t ;


 int snprintf (char*,size_t const,char*,char*,int const) ;

int module_filename (const folder_config_t *folder_config, const int hash_mode, char *out_buf, const size_t out_size)
{




  return snprintf (out_buf, out_size, "%s/modules/module_%05d.so", folder_config->shared_dir, hash_mode);

}
