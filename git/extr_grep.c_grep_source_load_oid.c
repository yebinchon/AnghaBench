
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_source {int identifier; int name; int buf; int size; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int _ (char*) ;
 int error (int ,int ,char*) ;
 int grep_read_lock () ;
 int grep_read_unlock () ;
 char* oid_to_hex (int ) ;
 int read_object_file (int ,int*,int *) ;

__attribute__((used)) static int grep_source_load_oid(struct grep_source *gs)
{
 enum object_type type;

 grep_read_lock();
 gs->buf = read_object_file(gs->identifier, &type, &gs->size);
 grep_read_unlock();

 if (!gs->buf)
  return error(_("'%s': unable to read %s"),
        gs->name,
        oid_to_hex(gs->identifier));
 return 0;
}
