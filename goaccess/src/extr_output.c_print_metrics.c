
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int module; } ;
struct TYPE_5__ {scalar_t__ protocol; scalar_t__ method; } ;
typedef TYPE_1__ GOutput ;
typedef TYPE_2__ GHTML ;
typedef int FILE ;


 TYPE_1__* output_lookup (int ) ;
 int print_def_avgts (int *,int) ;
 int print_def_bw (int *,int) ;
 int print_def_cumts (int *,int) ;
 int print_def_data (int *,int ,int) ;
 int print_def_hits (int *,int) ;
 int print_def_maxts (int *,int) ;
 int print_def_method (int *,int) ;
 int print_def_protocol (int *,int) ;
 int print_def_visitors (int *,int) ;

__attribute__((used)) static void
print_metrics (FILE * fp, const GHTML * def, int sp)
{
  const GOutput *output = output_lookup (def->module);

  print_def_hits (fp, sp);
  print_def_visitors (fp, sp);
  print_def_bw (fp, sp);
  print_def_avgts (fp, sp);
  print_def_cumts (fp, sp);
  print_def_maxts (fp, sp);

  if (output->method)
    print_def_method (fp, sp);
  if (output->protocol)
    print_def_protocol (fp, sp);

  print_def_data (fp, def->module, sp);
}
