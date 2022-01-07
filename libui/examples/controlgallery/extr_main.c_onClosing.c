
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uiWindow ;


 int uiQuit () ;

__attribute__((used)) static int onClosing(uiWindow *w, void *data)
{
 uiQuit();
 return 1;
}
