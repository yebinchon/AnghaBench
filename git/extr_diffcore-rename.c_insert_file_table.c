
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct hashmap {int dummy; } ;
struct file_similarity {int index; int entry; struct diff_filespec* filespec; } ;
struct diff_filespec {int dummy; } ;


 int hash_filespec (struct repository*,struct diff_filespec*) ;
 int hashmap_add (struct hashmap*,int *) ;
 int hashmap_entry_init (int *,int ) ;
 struct file_similarity* xmalloc (int) ;

__attribute__((used)) static void insert_file_table(struct repository *r,
         struct hashmap *table, int index,
         struct diff_filespec *filespec)
{
 struct file_similarity *entry = xmalloc(sizeof(*entry));

 entry->index = index;
 entry->filespec = filespec;

 hashmap_entry_init(&entry->entry, hash_filespec(r, filespec));
 hashmap_add(table, &entry->entry);
}
