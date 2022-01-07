
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* path; } ;
typedef TYPE_1__ git_index_entry ;
struct TYPE_9__ {int entries; int entries_search_path; int ignore_case; } ;
typedef TYPE_2__ git_index ;


 scalar_t__ GIT_INDEX_ENTRY_STAGE (TYPE_1__ const*) ;
 int git__free (char*) ;
 char* git__strdup (char*) ;
 int git_vector_bsearch2 (size_t*,int *,int ,char*) ;
 TYPE_1__* git_vector_get (int *,size_t) ;
 int memcpy (char*,char*,size_t) ;
 int * strchr (char*,char) ;
 size_t strlen (char*) ;
 scalar_t__ strncasecmp (char*,char*,size_t) ;
 scalar_t__ strncmp (char*,char*,size_t) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int canonicalize_directory_path(
 git_index *index,
 git_index_entry *entry,
 git_index_entry *existing)
{
 const git_index_entry *match, *best = ((void*)0);
 char *search, *sep;
 size_t pos, search_len, best_len;

 if (!index->ignore_case)
  return 0;


 if (existing) {
  memcpy((char *)entry->path, existing->path, strlen(existing->path));
  return 0;
 }


 if (strchr(entry->path, '/') == ((void*)0))
  return 0;

 if ((search = git__strdup(entry->path)) == ((void*)0))
  return -1;




 while (!best && (sep = strrchr(search, '/'))) {
  sep[1] = '\0';

  search_len = strlen(search);

  git_vector_bsearch2(
   &pos, &index->entries, index->entries_search_path, search);

  while ((match = git_vector_get(&index->entries, pos))) {
   if (GIT_INDEX_ENTRY_STAGE(match) != 0) {

   } else if (strncmp(search, match->path, search_len) == 0) {

    best = match;
    best_len = search_len;
    break;
   } else if (strncasecmp(search, match->path, search_len) == 0) {




    if (!best) {
     best = match;
     best_len = search_len;
    }
   } else {
    break;
   }

   pos++;
  }

  sep[0] = '\0';
 }

 if (best)
  memcpy((char *)entry->path, best->path, best_len);

 git__free(search);
 return 0;
}
