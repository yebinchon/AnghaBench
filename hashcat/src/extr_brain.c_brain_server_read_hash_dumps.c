
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dirent {char* d_name; } ;
struct TYPE_3__ {size_t hash_cnt; int * hash_buf; } ;
typedef TYPE_1__ brain_server_dbs_t ;
typedef int brain_server_db_hash_t ;
typedef int DIR ;


 int brain_logging (int ,int ,char*,char const*,int ) ;
 int brain_server_db_hash_init (int *,int const) ;
 int brain_server_read_hash_dump (int *,char*) ;
 int byte_swap_32 (int ) ;
 int chdir (char const*) ;
 int closedir (int *) ;
 int errno ;
 int hex_to_u32 (int const*) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int stderr ;
 int strerror (int ) ;
 size_t strlen (char*) ;

bool brain_server_read_hash_dumps (brain_server_dbs_t *brain_server_dbs, const char *path)
{
  brain_server_dbs->hash_cnt = 0;

  if (chdir (path) == -1)
  {
    brain_logging (stderr, 0, "%s: %s\n", path, strerror (errno));

    return 0;
  }

  DIR *dirp = opendir (path);

  if (dirp == ((void*)0))
  {
    brain_logging (stderr, 0, "%s: %s\n", path, strerror (errno));

    return 0;
  }

  struct dirent *entry;

  while ((entry = readdir (dirp)) != ((void*)0))
  {
    char *file = entry->d_name;

    const size_t len = strlen (file);

    if (len != 19) continue;

    if (file[ 0] != 'b') continue;
    if (file[ 1] != 'r') continue;
    if (file[ 2] != 'a') continue;
    if (file[ 3] != 'i') continue;
    if (file[ 4] != 'n') continue;
    if (file[ 5] != '.') continue;

    if (file[14] != '.') continue;
    if (file[15] != 'l') continue;
    if (file[16] != 'd') continue;
    if (file[17] != 'm') continue;
    if (file[18] != 'p') continue;

    const u32 brain_session = byte_swap_32 (hex_to_u32 ((const u8 *) file + 6));

    brain_server_db_hash_t *brain_server_db_hash = &brain_server_dbs->hash_buf[brain_server_dbs->hash_cnt];

    brain_server_db_hash_init (brain_server_db_hash, brain_session);

    if (brain_server_read_hash_dump (brain_server_db_hash, file) == 0) continue;

    brain_server_dbs->hash_cnt++;
  }

  closedir (dirp);

  return 1;
}
