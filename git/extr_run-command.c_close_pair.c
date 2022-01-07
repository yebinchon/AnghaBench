
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;

__attribute__((used)) static inline void close_pair(int fd[2])
{
 close(fd[0]);
 close(fd[1]);
}
