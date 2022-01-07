
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int fd; int filename; int list; scalar_t__ owner; scalar_t__ active; int * fp; } ;


 int INIT_LIST_HEAD (int *) ;
 int strbuf_init (int *,int ) ;
 struct tempfile* xmalloc (int) ;

__attribute__((used)) static struct tempfile *new_tempfile(void)
{
 struct tempfile *tempfile = xmalloc(sizeof(*tempfile));
 tempfile->fd = -1;
 tempfile->fp = ((void*)0);
 tempfile->active = 0;
 tempfile->owner = 0;
 INIT_LIST_HEAD(&tempfile->list);
 strbuf_init(&tempfile->filename, 0);
 return tempfile;
}
