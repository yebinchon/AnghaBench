
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long callback_close (long) ;

__attribute__((used)) static inline long close(long dev)
{
 return callback_close(dev);
}
