
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sign; int offset; int time; } ;
struct TYPE_7__ {TYPE_1__ when; int email; int name; } ;
typedef TYPE_2__ git_signature ;
typedef int git_mailmap ;


 int git_mailmap_resolve (char const**,char const**,int const*,int ,int ) ;
 int git_signature_new (TYPE_2__**,char const*,char const*,int ,int ) ;

int git_mailmap_resolve_signature(
 git_signature **out, const git_mailmap *mailmap, const git_signature *sig)
{
 const char *name = ((void*)0);
 const char *email = ((void*)0);
 int error;

 if (!sig)
  return 0;

 error = git_mailmap_resolve(&name, &email, mailmap, sig->name, sig->email);
 if (error < 0)
  return error;

 error = git_signature_new(out, name, email, sig->when.time, sig->when.offset);
 if (error < 0)
  return error;


 (*out)->when.sign = sig->when.sign;
 return 0;
}
