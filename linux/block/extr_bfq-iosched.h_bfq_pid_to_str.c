
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static inline void bfq_pid_to_str(int pid, char *str, int len)
{
 if (pid != -1)
  snprintf(str, len, "%d", pid);
 else
  snprintf(str, len, "SHARED-");
}
