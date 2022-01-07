
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imagetag_cmdline_params {int dummy; } ;


 int imagetag_cmdline_params_init (struct imagetag_cmdline_params*) ;
 scalar_t__ malloc (int) ;

struct imagetag_cmdline_params *
imagetag_cmdline_params_create(void)
{
  struct imagetag_cmdline_params *params =
    (struct imagetag_cmdline_params *)malloc(sizeof(struct imagetag_cmdline_params));
  imagetag_cmdline_params_init(params);
  return params;
}
