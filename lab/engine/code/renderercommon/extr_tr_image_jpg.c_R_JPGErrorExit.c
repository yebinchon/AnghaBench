
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int setjmp_buffer; } ;
typedef TYPE_2__ q_jpeg_error_mgr_t ;
typedef TYPE_3__* j_common_ptr ;
struct TYPE_10__ {int (* Printf ) (int ,char*,char*) ;} ;
struct TYPE_9__ {TYPE_1__* err; } ;
struct TYPE_7__ {int (* format_message ) (TYPE_3__*,char*) ;} ;


 int JMSG_LENGTH_MAX ;
 int PRINT_ALL ;
 int longjmp (int ,int) ;
 TYPE_5__ ri ;
 int stub1 (TYPE_3__*,char*) ;
 int stub2 (int ,char*,char*) ;

__attribute__((used)) static void R_JPGErrorExit(j_common_ptr cinfo)
{
  char buffer[JMSG_LENGTH_MAX];


  q_jpeg_error_mgr_t *jerr = (q_jpeg_error_mgr_t *)cinfo->err;

  (*cinfo->err->format_message) (cinfo, buffer);

  ri.Printf(PRINT_ALL, "Error: %s", buffer);


  longjmp(jerr->setjmp_buffer, 1);
}
