
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GLog ;
typedef int GHolder ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int free (char*) ;
 char* get_json (int *,int *,int) ;

__attribute__((used)) static void
print_json_data (FILE * fp, GLog * glog, GHolder * holder)
{
  char *json = ((void*)0);

  if ((json = get_json (glog, holder, 1)) == ((void*)0))
    return;

  fprintf (fp, "<script type='text/javascript'>");
  fprintf (fp, "var json_data=%s", json);
  fprintf (fp, "</script>");

  free (json);
}
