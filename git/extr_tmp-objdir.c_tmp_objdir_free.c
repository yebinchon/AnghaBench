
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmp_objdir {int env; int path; } ;


 int argv_array_clear (int *) ;
 int free (struct tmp_objdir*) ;
 int strbuf_release (int *) ;

__attribute__((used)) static void tmp_objdir_free(struct tmp_objdir *t)
{
 strbuf_release(&t->path);
 argv_array_clear(&t->env);
 free(t);
}
