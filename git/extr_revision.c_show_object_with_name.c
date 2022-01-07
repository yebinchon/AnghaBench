
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;
 int fputc (char const,int *) ;
 char* oid_to_hex (int *) ;

void show_object_with_name(FILE *out, struct object *obj, const char *name)
{
 const char *p;

 fprintf(out, "%s ", oid_to_hex(&obj->oid));
 for (p = name; *p && *p != '\n'; p++)
  fputc(*p, out);
 fputc('\n', out);
}
