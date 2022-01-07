
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_directory {struct object_directory* path; } ;


 int free (struct object_directory*) ;
 int odb_clear_loose_cache (struct object_directory*) ;

__attribute__((used)) static void free_object_directory(struct object_directory *odb)
{
 free(odb->path);
 odb_clear_loose_cache(odb);
 free(odb);
}
