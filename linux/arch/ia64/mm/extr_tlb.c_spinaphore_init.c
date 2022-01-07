
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spinaphore {int serve; scalar_t__ ticket; } ;



__attribute__((used)) static inline void spinaphore_init(struct spinaphore *ss, int val)
{
 ss->ticket = 0;
 ss->serve = val;
}
