
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int dummy; } ;
struct discovery {struct ref* refs; } ;


 struct discovery* discover_refs (char*,int) ;

__attribute__((used)) static struct ref *get_refs(int for_push)
{
 struct discovery *heads;

 if (for_push)
  heads = discover_refs("git-receive-pack", for_push);
 else
  heads = discover_refs("git-upload-pack", for_push);

 return heads->refs;
}
