
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ severity; } ;
typedef TYPE_1__ ExceptionInfo ;


 int CatchException (TYPE_1__*) ;
 int DestroyExceptionInfo (TYPE_1__*) ;
 int GetExceptionInfo (TYPE_1__*) ;
 int ListMagickInfo (int ,TYPE_1__*) ;
 scalar_t__ UndefinedException ;
 int stderr ;
 scalar_t__ verbosity ;

void image_list_info (void) {
  if (verbosity > 0) {
    ExceptionInfo exception;
    GetExceptionInfo (&exception);
    ListMagickInfo (stderr, &exception);
    if (exception.severity != UndefinedException) {
      CatchException (&exception);
    }
    DestroyExceptionInfo (&exception);
  }
}
