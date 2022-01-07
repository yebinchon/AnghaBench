
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cname; char* cwidth; char* datakey; char* datatype; char* metakey; char* metalbl; char* metatype; int lbl; } ;
typedef int GModule ;
typedef TYPE_1__ GDefMetric ;
typedef int FILE ;


 int MTRC_DATA_LBL ;
 int VISITORS ;
 int print_def_block (int *,TYPE_1__,int,int) ;

__attribute__((used)) static void
print_def_data (FILE * fp, GModule module, int sp)
{
  GDefMetric def = {
    .cname = "trunc",
    .cwidth = "100%",
    .datakey = "data",
    .datatype = module == VISITORS ? "date" : "string",
    .lbl = MTRC_DATA_LBL,
    .metakey = "unique",
    .metalbl = "Total",
    .metatype = "numeric",
  };

  print_def_block (fp, def, sp, 1);
}
