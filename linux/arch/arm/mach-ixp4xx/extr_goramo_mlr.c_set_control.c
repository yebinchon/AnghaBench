
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int control_value ;

__attribute__((used)) static inline void set_control(int line, int value)
{
 if (value)
  control_value |= (1 << line);
 else
  control_value &= ~(1 << line);
}
