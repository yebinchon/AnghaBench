
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t tot_users; int user_list_offset; void* data_end_offset; void* extra_data_offset; } ;
struct TYPE_3__ {void* user_data_offset; } ;


 TYPE_2__ Header ;
 TYPE_1__** UserDirectory ;
 int UserDirectoryData ;
 int initcrc () ;
 size_t tot_users ;
 int user_dir_size ;
 void* write_pos ;
 int write_seek (int ) ;
 int writecrc () ;
 int writeout (int ,int ) ;

void write_user_directory (void) {
  Header.extra_data_offset = write_pos;
  Header.data_end_offset = write_pos;
  Header.tot_users = tot_users;

  UserDirectory[tot_users]->user_data_offset = write_pos;

  write_seek (Header.user_list_offset);
  initcrc ();
  writeout (UserDirectoryData, user_dir_size);
  writecrc ();
}
