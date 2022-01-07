
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tempfile {int active; int owner; int list; } ;


 int BUG (char*) ;
 int atexit (int ) ;
 int getpid () ;
 scalar_t__ is_tempfile_active (struct tempfile*) ;
 int remove_tempfiles_on_exit ;
 int remove_tempfiles_on_signal ;
 int sigchain_push_common (int ) ;
 int tempfile_list ;
 int volatile_list_add (int *,int *) ;

__attribute__((used)) static void activate_tempfile(struct tempfile *tempfile)
{
 static int initialized;

 if (is_tempfile_active(tempfile))
  BUG("activate_tempfile called for active object");

 if (!initialized) {
  sigchain_push_common(remove_tempfiles_on_signal);
  atexit(remove_tempfiles_on_exit);
  initialized = 1;
 }

 volatile_list_add(&tempfile->list, &tempfile_list);
 tempfile->owner = getpid();
 tempfile->active = 1;
}
