
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
typedef int FILE ;


 int RUN_USING_SHELL ;
 struct strbuf STRBUF_INIT ;
 int die (char*,...) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,...) ;
 char* getenv (char*) ;
 int run_command_v_opt (char const**,int ) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;

int cmd_main(int argc, const char **argv)
{
 const char *trash_directory = getenv("TRASH_DIRECTORY");
 struct strbuf buf = STRBUF_INIT;
 FILE *f;
 int i;
 const char *child_argv[] = { ((void*)0), ((void*)0) };


 if (!trash_directory)
  die("Need a TRASH_DIRECTORY!");
 strbuf_addf(&buf, "%s/ssh-output", trash_directory);
 f = fopen(buf.buf, "w");
 if (!f)
  die("Could not write to %s", buf.buf);
 for (i = 0; i < argc; i++)
  fprintf(f, "%s%s", i > 0 ? " " : "", i > 0 ? argv[i] : "ssh:");
 fprintf(f, "\n");
 fclose(f);


 if (argc < 2)
  return 0;
 child_argv[0] = argv[argc - 1];
 return run_command_v_opt(child_argv, RUN_USING_SHELL);
}
