
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct forth_stack {int top; } ;
struct TYPE_5__ {int filename; } ;
typedef TYPE_1__ ImageInfo ;
typedef int Image ;
typedef int ExceptionInfo ;


 int CatchException (int *) ;
 TYPE_1__* CloneImageInfo (int *) ;
 int DestroyExceptionInfo (int *) ;
 int DestroyImageInfo (TYPE_1__*) ;
 void* FORTH_FAIL ;
 int GetExceptionInfo (int *) ;
 int MaxTextExtent ;
 int NEXT ;
 int * PingImage (TYPE_1__*,int *) ;
 void* failf (struct forth_stack*,char*,...) ;
 int free_stack (struct forth_stack*,int,int) ;
 int pop_str (struct forth_stack*,char**,char*) ;
 int push_image (struct forth_stack*,int *) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void *forth_ping (void **IP, struct forth_stack *st) {
  char *filename;
  int old_stack_top = st->top;
  if (!pop_str (st, &filename, "ping: 1st isn't str")) {
    st->top = old_stack_top;
    return FORTH_FAIL;
  }
  if (strlen (filename) > MaxTextExtent-1) {
    return failf (st, "ping: filename too long");
  }
  ExceptionInfo exception;
  GetExceptionInfo (&exception);
  ImageInfo *image_info = CloneImageInfo (((void*)0));
  strcpy (image_info->filename, filename);
  Image *r = PingImage (image_info, &exception);
  DestroyImageInfo (image_info);
  if (r == ((void*)0)) {
    st->top = old_stack_top;
    CatchException (&exception);
    DestroyExceptionInfo (&exception);
    return failf (st, "ping: PingImage (%s) throws exception", filename);
  }

  free_stack (st, st->top + 1, old_stack_top);

  push_image (st, r);

  NEXT;
}
