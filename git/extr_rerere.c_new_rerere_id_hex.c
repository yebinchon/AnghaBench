
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rerere_id {int variant; int collection; } ;


 int find_rerere_dir (char*) ;
 struct rerere_id* xmalloc (int) ;

__attribute__((used)) static struct rerere_id *new_rerere_id_hex(char *hex)
{
 struct rerere_id *id = xmalloc(sizeof(*id));
 id->collection = find_rerere_dir(hex);
 id->variant = -1;
 return id;
}
