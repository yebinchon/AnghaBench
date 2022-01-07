
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int email; int name; } ;
typedef TYPE_1__ git_signature ;


 int * strstr (int ,char const*) ;

__attribute__((used)) static int signature_matches(const git_signature *sig, const char *filter) {
 if (filter == ((void*)0))
  return 1;

 if (sig != ((void*)0) &&
  (strstr(sig->name, filter) != ((void*)0) ||
  strstr(sig->email, filter) != ((void*)0)))
  return 1;

 return 0;
}
