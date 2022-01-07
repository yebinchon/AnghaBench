
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_source {int type; scalar_t__ buf; } ;


 int BUG (char*) ;



 int grep_source_load_file (struct grep_source*) ;
 int grep_source_load_oid (struct grep_source*) ;

__attribute__((used)) static int grep_source_load(struct grep_source *gs)
{
 if (gs->buf)
  return 0;

 switch (gs->type) {
 case 129:
  return grep_source_load_file(gs);
 case 128:
  return grep_source_load_oid(gs);
 case 130:
  return gs->buf ? 0 : -1;
 }
 BUG("invalid grep_source type to load");
}
