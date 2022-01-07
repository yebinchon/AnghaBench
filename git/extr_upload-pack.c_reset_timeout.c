
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarm (int ) ;
 int timeout ;

__attribute__((used)) static void reset_timeout(void)
{
 alarm(timeout);
}
