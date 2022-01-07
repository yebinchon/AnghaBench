
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buf; } ;
struct tmp_objdir {TYPE_1__ path; int env; } ;


 int ALTERNATE_DB_ENVIRONMENT ;
 int BUG (char*) ;
 int DB_ENVIRONMENT ;
 int GIT_QUARANTINE_ENVIRONMENT ;
 int absolute_path (int ) ;
 int argv_array_init (int *) ;
 int atexit (int ) ;
 int env_append (int *,int ,int ) ;
 int env_replace (int *,int ,int ) ;
 int get_object_directory () ;
 int mkdtemp (int ) ;
 int remove_tmp_objdir ;
 int remove_tmp_objdir_on_signal ;
 scalar_t__ setup_tmp_objdir (int ) ;
 int sigchain_push_common (int ) ;
 int strbuf_addf (TYPE_1__*,char*,int ) ;
 int strbuf_grow (TYPE_1__*,int) ;
 int strbuf_init (TYPE_1__*,int ) ;
 struct tmp_objdir* the_tmp_objdir ;
 int tmp_objdir_destroy (struct tmp_objdir*) ;
 int tmp_objdir_free (struct tmp_objdir*) ;
 struct tmp_objdir* xmalloc (int) ;

struct tmp_objdir *tmp_objdir_create(void)
{
 static int installed_handlers;
 struct tmp_objdir *t;

 if (the_tmp_objdir)
  BUG("only one tmp_objdir can be used at a time");

 t = xmalloc(sizeof(*t));
 strbuf_init(&t->path, 0);
 argv_array_init(&t->env);

 strbuf_addf(&t->path, "%s/incoming-XXXXXX", get_object_directory());







 strbuf_grow(&t->path, 1024);

 if (!mkdtemp(t->path.buf)) {

  tmp_objdir_free(t);
  return ((void*)0);
 }

 the_tmp_objdir = t;
 if (!installed_handlers) {
  atexit(remove_tmp_objdir);
  sigchain_push_common(remove_tmp_objdir_on_signal);
  installed_handlers++;
 }

 if (setup_tmp_objdir(t->path.buf)) {
  tmp_objdir_destroy(t);
  return ((void*)0);
 }

 env_append(&t->env, ALTERNATE_DB_ENVIRONMENT,
     absolute_path(get_object_directory()));
 env_replace(&t->env, DB_ENVIRONMENT, absolute_path(t->path.buf));
 env_replace(&t->env, GIT_QUARANTINE_ENVIRONMENT,
      absolute_path(t->path.buf));

 return t;
}
