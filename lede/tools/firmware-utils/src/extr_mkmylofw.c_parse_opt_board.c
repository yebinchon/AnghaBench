
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flash_size; int sdid; int svid; int did; int vid; } ;
struct TYPE_4__ {int sdid; int svid; int did; int vid; } ;


 TYPE_2__* board ;
 int errmsg (int ,char*,char*) ;
 TYPE_2__* find_board (char*) ;
 int flash_size ;
 TYPE_1__ fw_header ;
 scalar_t__ required_arg (char,char*) ;

int
parse_opt_board(char ch, char *arg)
{
 if (required_arg(ch, arg)) {
  goto err_out;
 }

 board = find_board(arg);
 if (board == ((void*)0)){
  errmsg(0,"invalid/unknown board specified: %s", arg);
  goto err_out;
 }

 fw_header.vid = board->vid;
 fw_header.did = board->did;
 fw_header.svid = board->svid;
 fw_header.sdid = board->sdid;

 flash_size = board->flash_size;

 return 0;

err_out:
 return -1;
}
