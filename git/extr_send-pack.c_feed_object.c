
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef int FILE ;


 int OBJECT_INFO_SKIP_FETCH_OBJECT ;
 int fputs (int ,int *) ;
 int has_object_file_with_flags (struct object_id const*,int ) ;
 int oid_to_hex (struct object_id const*) ;
 int putc (char,int *) ;

__attribute__((used)) static void feed_object(const struct object_id *oid, FILE *fh, int negative)
{
 if (negative &&
     !has_object_file_with_flags(oid, OBJECT_INFO_SKIP_FETCH_OBJECT))
  return;

 if (negative)
  putc('^', fh);
 fputs(oid_to_hex(oid), fh);
 putc('\n', fh);
}
