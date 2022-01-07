
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ kernel_len; scalar_t__ rootfs_len; } ;
struct TYPE_6__ {scalar_t__ file_size; int * file_name; } ;


 int ERR (char*,...) ;
 TYPE_4__* board ;
 int * board_id ;
 TYPE_4__* find_board (int *) ;
 int get_file_stat (TYPE_1__*) ;
 TYPE_1__ kernel_info ;
 int * ofname ;
 TYPE_1__ rootfs_info ;

__attribute__((used)) static int check_options(void)
{
 int ret;

 if (board_id == ((void*)0)) {
  ERR("no board specified");
  return -1;
 }

 board = find_board(board_id);
 if (board == ((void*)0)) {
  ERR("unknown/unsupported board id \"%s\"", board_id);
  return -1;
 }

 if (kernel_info.file_name == ((void*)0)) {
  ERR("no kernel image specified");
  return -1;
 }

 ret = get_file_stat(&kernel_info);
 if (ret)
  return ret;

 if (kernel_info.file_size > board->kernel_len) {
  ERR("kernel image is too big");
  return -1;
 }

 if (rootfs_info.file_name == ((void*)0)) {
  ERR("no rootfs image specified");
  return -1;
 }

 ret = get_file_stat(&rootfs_info);
 if (ret)
  return ret;

 if (rootfs_info.file_size > board->rootfs_len) {
  ERR("rootfs image is too big");
  return -1;
 }

 if (ofname == ((void*)0)) {
  ERR("no output file specified");
  return -1;
 }

 return 0;
}
