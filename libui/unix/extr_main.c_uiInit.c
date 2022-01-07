
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uiInitOptions ;
struct TYPE_4__ {int message; } ;
typedef TYPE_1__ GError ;


 scalar_t__ FALSE ;
 int g_direct_equal ;
 int g_direct_hash ;
 int g_error_free (TYPE_1__*) ;
 int g_hash_table_new (int ,int ) ;
 char* g_strdup (int ) ;
 scalar_t__ gtk_init_with_args (int *,int *,int *,int *,int *,TYPE_1__**) ;
 int timers ;
 int uiprivInitAlloc () ;
 int uiprivLoadFutures () ;
 int uiprivOptions ;

const char *uiInit(uiInitOptions *o)
{
 GError *err = ((void*)0);
 const char *msg;

 uiprivOptions = *o;
 if (gtk_init_with_args(((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &err) == FALSE) {
  msg = g_strdup(err->message);
  g_error_free(err);
  return msg;
 }
 uiprivInitAlloc();
 uiprivLoadFutures();
 timers = g_hash_table_new(g_direct_hash, g_direct_equal);
 return ((void*)0);
}
