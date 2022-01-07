
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* j_common_ptr ;
struct TYPE_8__ {int (* Printf ) (int ,char*,char*) ;} ;
struct TYPE_7__ {TYPE_1__* err; } ;
struct TYPE_6__ {int (* format_message ) (TYPE_2__*,char*) ;} ;


 int JMSG_LENGTH_MAX ;
 int PRINT_ALL ;
 TYPE_4__ ri ;
 int stub1 (TYPE_2__*,char*) ;
 int stub2 (int ,char*,char*) ;

__attribute__((used)) static void R_JPGOutputMessage(j_common_ptr cinfo)
{
  char buffer[JMSG_LENGTH_MAX];


  (*cinfo->err->format_message) (cinfo, buffer);


  ri.Printf(PRINT_ALL, "%s\n", buffer);
}
