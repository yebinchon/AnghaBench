
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (int *,int ,char*,char const*,char const*,char const*) ;
 int sprintf (char*,char*,char const*,char const*,char const*) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *
render_child_node (const char *data)
{
  char *buf;
  int len = 0;






  const char *bend = "|";
  const char *horz = "`-";


  if (data == ((void*)0) || *data == '\0')
    return ((void*)0);

  len = snprintf (((void*)0), 0, " %s%s %s", bend, horz, data);
  buf = xmalloc (len + 3);
  sprintf (buf, " %s%s %s", bend, horz, data);

  return buf;
}
