
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * kfs_file_handle_t ;
struct TYPE_3__ {int log_pos1_crc32; int log_pos1; int log_timestamp; } ;
typedef TYPE_1__ index_header ;


 int FALSE ;
 int TRUE ;
 int jump_log_crc32 ;
 int jump_log_pos ;
 int jump_log_ts ;
 int load_header (int *,TYPE_1__*) ;
 int st_printf (char*,char*) ;
 int verbosity ;

__attribute__((used)) static bool load_index (kfs_file_handle_t Index) {
  if (verbosity >= 2) {
    st_printf ("$1load_index: $2started (%s)...$^\n", (Index == ((void*)0) ? "Index == 0" : "Index != 0"));
  }

  index_header header;
  if (!load_header (Index, &header)) {
    return FALSE;
  }

  jump_log_ts = header.log_timestamp;
  jump_log_pos = header.log_pos1;
  jump_log_crc32 = header.log_pos1_crc32;

  if (verbosity >= 2) {
    st_printf ("$1load_index: $2%sloaded!$^\n", (Index == ((void*)0) ? "empty index " : ""));
  }

  return TRUE;
}
