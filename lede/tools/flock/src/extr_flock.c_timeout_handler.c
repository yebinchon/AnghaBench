
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int timeout_expired ;

__attribute__((used)) static void timeout_handler(int sig)
{
  (void)sig;

  timeout_expired = 1;
}
