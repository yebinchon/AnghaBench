
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* ERR_NODEF_CONF_FILE ;
 char* ERR_NODEF_CONF_FILE_DESC ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 char* get_config_file_path () ;
 int stdout ;

void
display_default_config_file (void)
{
  char *path = get_config_file_path ();

  if (!path) {
    fprintf (stdout, "%s\n", ERR_NODEF_CONF_FILE);
    fprintf (stdout, "%s `-p /path/goaccess.conf`\n", ERR_NODEF_CONF_FILE_DESC);
  } else {
    fprintf (stdout, "%s\n", path);
    free (path);
  }
}
