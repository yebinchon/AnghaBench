
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2_dst {int sysenv_var; } ;


 int tr2_sysenv_display_name (int ) ;
 int warning (char*,int ,char const*) ;

__attribute__((used)) static void tr2_dst_malformed_warning(struct tr2_dst *dst,
          const char *tgt_value)
{
 warning("trace2: unknown value for '%s': '%s'",
  tr2_sysenv_display_name(dst->sysenv_var), tgt_value);
}
