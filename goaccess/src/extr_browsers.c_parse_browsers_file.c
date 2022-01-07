
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int browsers_hash_idx; void* user_browsers_hash; int browsers_file; } ;
typedef int FILE ;


 int ARRAY_SIZE (int **) ;
 int FATAL (char*,...) ;
 int MAX_CUSTOM_BROWSERS ;
 int MAX_LINE_BROWSERS ;
 int ** browsers ;
 void* browsers_hash ;
 TYPE_1__ conf ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (int ,char*) ;
 int memmove (char*,char*,int ) ;
 int parse_browser_token (void*,char*,int) ;
 int set_browser (void*,size_t,int ,int ) ;
 int strerror (int ) ;
 int strlen (char*) ;
 void* xmalloc (int) ;

void
parse_browsers_file (void)
{
  char line[MAX_LINE_BROWSERS + 1];
  FILE *file;
  int n = 0;
  size_t i, len = ARRAY_SIZE (browsers);

  browsers_hash = xmalloc (ARRAY_SIZE (browsers) * sizeof (char **));

  for (i = 0; i < len; ++i) {
    set_browser (browsers_hash, i, browsers[i][0], browsers[i][1]);
  }

  if (!conf.browsers_file)
    return;


  if ((file = fopen (conf.browsers_file, "r")) == ((void*)0))
    FATAL ("Unable to open browser's file: %s", strerror (errno));

  conf.user_browsers_hash = xmalloc (MAX_CUSTOM_BROWSERS * sizeof (char **));

  while (fgets (line, sizeof line, file) != ((void*)0)) {
    while (line[0] == ' ' || line[0] == '\t')
      memmove (line, line + 1, strlen (line));
    n++;

    if (line[0] == '\n' || line[0] == '\r' || line[0] == '#')
      continue;
    if (conf.browsers_hash_idx >= MAX_CUSTOM_BROWSERS)
      FATAL ("Maximum number of custom browsers has been reached");
    parse_browser_token (conf.user_browsers_hash, line, n);
  }
  fclose (file);
}
