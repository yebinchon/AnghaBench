
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* iconfigfile; } ;
typedef int FILE ;


 int ENOENT ;
 int FATAL (char*,int) ;
 int MAX_LINE_CONF ;
 int append_to_argv (int*,scalar_t__*,char*) ;
 TYPE_1__ conf ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 char* get_config_file_path () ;
 scalar_t__ in_ignore_cmd_opts (char*) ;
 int memmove (char*,char*,size_t) ;
 int nargc ;
 scalar_t__ nargv ;
 scalar_t__ snprintf (int *,int ,char*,char*) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strcspn (char*,char*) ;
 size_t strlen (char*) ;
 char* strpbrk (char*,char*) ;
 size_t strspn (char*,char*) ;
 char* trim_str (char*) ;
 char* xmalloc (scalar_t__) ;
 char* xstrdup (char*) ;

int
parse_conf_file (int *argc, char ***argv)
{
  char line[MAX_LINE_CONF + 1];
  char *path = ((void*)0), *val, *opt, *p;
  FILE *file;
  int i, n = 0;
  size_t idx;


  append_to_argv (&nargc, &nargv, xstrdup ((char *) *argv[0]));


  path = get_config_file_path ();
  if (path == ((void*)0))
    return ENOENT;


  if ((file = fopen (path, "r")) == ((void*)0)) {
    free (path);
    return ENOENT;
  }

  while (fgets (line, sizeof line, file) != ((void*)0)) {
    while (line[0] == ' ' || line[0] == '\t')
      memmove (line, line + 1, strlen (line));
    n++;
    if (line[0] == '\n' || line[0] == '\r' || line[0] == '#')
      continue;


    idx = strcspn (line, " \t");
    if (strlen (line) == idx)
      FATAL ("Malformed config key at line: %d", n);

    line[idx] = '\0';



    while ((p = strpbrk (line, "_")) != ((void*)0))
      *p = '-';


    if (in_ignore_cmd_opts (line))
      continue;


    val = line + (idx + 1);
    idx = strspn (val, " \t");
    if (strlen (line) == idx)
      FATAL ("Malformed config value at line: %d", n);
    val = val + idx;
    val = trim_str (val);

    if (strcmp ("false", val) == 0)
      continue;


    opt = xmalloc (snprintf (((void*)0), 0, "--%s", line) + 1);
    sprintf (opt, "--%s", line);

    append_to_argv (&nargc, &nargv, opt);
    if (strcmp ("true", val) != 0)
      append_to_argv (&nargc, &nargv, xstrdup (val));
  }


  for (i = 1; i < *argc; i++)
    append_to_argv (&nargc, &nargv, xstrdup ((char *) (*argv)[i]));

  *argc = nargc;
  *argv = (char **) nargv;

  fclose (file);

  if (conf.iconfigfile == ((void*)0))
    conf.iconfigfile = xstrdup (path);

  free (path);
  return 0;
}
