
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strip_args {int argc_start; int argc; char** argv; scalar_t__ lvar; } ;
typedef int mrb_state ;
typedef int mrb_irep ;
typedef int FILE ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int FALSE ;
 int MRB_DUMP_OK ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int mrb_dump_irep_binary (int *,int *,int ,int *) ;
 int mrb_irep_decref (int *,int *) ;
 int mrb_irep_remove_lv (int *,int *) ;
 int * mrb_read_irep_file (int *,int *) ;
 int stderr ;

__attribute__((used)) static int
strip(mrb_state *mrb, struct strip_args *args)
{
  int i;

  for (i = args->argc_start; i < args->argc; ++i) {
    char *filename;
    FILE *rfile;
    mrb_irep *irep;
    FILE *wfile;
    int dump_result;

    filename = args->argv[i];
    rfile = fopen(filename, "rb");
    if (rfile == ((void*)0)) {
      fprintf(stderr, "can't open file for reading %s\n", filename);
      return EXIT_FAILURE;
    }

    irep = mrb_read_irep_file(mrb, rfile);
    fclose(rfile);
    if (irep == ((void*)0)) {
      fprintf(stderr, "can't read irep file %s\n", filename);
      return EXIT_FAILURE;
    }


    if (args->lvar) {
      mrb_irep_remove_lv(mrb, irep);
    }

    wfile = fopen(filename, "wb");
    if (wfile == ((void*)0)) {
      fprintf(stderr, "can't open file for writing %s\n", filename);
      mrb_irep_decref(mrb, irep);
      return EXIT_FAILURE;
    }


    dump_result = mrb_dump_irep_binary(mrb, irep, FALSE, wfile);

    fclose(wfile);
    mrb_irep_decref(mrb, irep);

    if (dump_result != MRB_DUMP_OK) {
      fprintf(stderr, "error occurred during dumping %s\n", filename);
      return EXIT_FAILURE;
    }
  }
  return EXIT_SUCCESS;
}
