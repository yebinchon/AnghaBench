
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int list; int filename; scalar_t__ active; } ;


 int free (struct tempfile*) ;
 int strbuf_release (int *) ;
 int volatile_list_del (int *) ;

__attribute__((used)) static void deactivate_tempfile(struct tempfile *tempfile)
{
 tempfile->active = 0;
 strbuf_release(&tempfile->filename);
 volatile_list_del(&tempfile->list);
 free(tempfile);
}
