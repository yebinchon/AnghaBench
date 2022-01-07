
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int bayes_is_spam (int *,int) ;
 int debug_on ;
 char* ds ;
 scalar_t__ msg_verify (int *,int) ;

int bayes_is_spam_debug (message *msg, int random_tag, char *debug_s) {
  if (msg_verify (msg, random_tag) < 0) {
    return -1;
  }

  debug_on = 1;
  ds = debug_s;

  bayes_is_spam (msg, random_tag);

  *ds = 0;
  debug_on = 0;

  return 0;
}
