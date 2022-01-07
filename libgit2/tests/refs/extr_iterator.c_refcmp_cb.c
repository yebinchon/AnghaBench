
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ git_reference ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int refcmp_cb(const void *a, const void *b)
{
 const git_reference *refa = (const git_reference *)a;
 const git_reference *refb = (const git_reference *)b;

 return strcmp(refa->name, refb->name);
}
