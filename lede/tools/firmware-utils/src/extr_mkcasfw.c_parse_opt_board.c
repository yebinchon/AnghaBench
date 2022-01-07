
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int header_type; int id; } ;
struct TYPE_6__ {int type; int id; } ;
struct TYPE_7__ {int type; int id; } ;
struct TYPE_8__ {TYPE_1__ nfs; TYPE_2__ cas; } ;


 int DBG (int,char*,char,char*) ;
 int ERR (char*,...) ;
 int ERR_FATAL ;


 TYPE_4__* board ;
 TYPE_4__* find_board (char*) ;
 TYPE_3__ header ;
 scalar_t__ required_arg (char,char*) ;

int
parse_opt_board(char ch, char *arg)
{

 DBG(1,"parsing board option: -%c %s", ch, arg);

 if (board != ((void*)0)) {
  ERR("only one board option allowed");
  return ERR_FATAL;
 }

 if (required_arg(ch, arg))
  return ERR_FATAL;

 board = find_board(arg);
 if (board == ((void*)0)){
  ERR("invalid/unknown board specified: %s", arg);
  return ERR_FATAL;
 }

 switch (board->header_type) {
 case 129:
  header.cas.type = 129;
  header.cas.id = board->id;
  break;
 case 128:
  header.nfs.type = 128;
  header.nfs.id = board->id;
  break;
 default:
  ERR("internal error, unknown header type\n");
  return ERR_FATAL;
 }

 return 0;
}
