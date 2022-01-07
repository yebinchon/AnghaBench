
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer {int dummy; } ;
typedef scalar_t__ gpointer ;


 int uiprivFree (struct timer*) ;

__attribute__((used)) static void uninitTimer(gpointer key, gpointer value, gpointer data)
{
 uiprivFree((struct timer *) key);
}
