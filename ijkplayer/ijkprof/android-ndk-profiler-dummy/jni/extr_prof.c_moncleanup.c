
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ANDROID_LOG_DEBUG ;
 int __android_log_print (int ,char*,char*) ;

extern void moncleanup(void)
{
    __android_log_print(ANDROID_LOG_DEBUG, "aprof-fake", "fake-momcleanup\n");
}
