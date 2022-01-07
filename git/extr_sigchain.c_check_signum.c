
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG (char*,int) ;
 int SIGCHAIN_MAX_SIGNALS ;

__attribute__((used)) static void check_signum(int sig)
{
 if (sig < 1 || sig >= SIGCHAIN_MAX_SIGNALS)
  BUG("signal out of range: %d", sig);
}
