
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;


 int _ (char*) ;
 int error (int ,char const*,...) ;
 int pthread_join (int ,void**) ;
 char* strerror (int) ;

__attribute__((used)) static int tloop_join(pthread_t thread, const char *name)
{
 int err;
 void *tret;
 err = pthread_join(thread, &tret);
 if (!tret) {
  error(_("%s thread failed"), name);
  return 1;
 }
 if (err) {
  error(_("%s thread failed to join: %s"), name, strerror(err));
  return 1;
 }
 return 0;
}
