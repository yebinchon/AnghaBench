
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ json_pretty_print; } ;
struct TYPE_5__ {scalar_t__ size; char* buf; } ;
typedef int GLog ;
typedef TYPE_1__ GJSON ;
typedef int GHolder ;
typedef int FILE ;


 int FATAL (char*,int ) ;
 TYPE_4__ conf ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,char*) ;
 int free_json (TYPE_1__*) ;
 TYPE_1__* init_json_output (int *,int *) ;
 int nlines ;
 int * stdout ;
 int strerror (int ) ;

void
output_json (GLog * glog, GHolder * holder, const char *filename)
{
  GJSON *json = ((void*)0);
  FILE *fp;

  if (filename != ((void*)0))
    fp = fopen (filename, "w");
  else
    fp = stdout;

  if (!fp)
    FATAL ("Unable to open JSON file: %s.", strerror (errno));


  if (conf.json_pretty_print)
    nlines = 1;


  if ((json = init_json_output (glog, holder)) && json->size > 0) {
    fprintf (fp, "%s", json->buf);
    free_json (json);
  }

  fclose (fp);
}
