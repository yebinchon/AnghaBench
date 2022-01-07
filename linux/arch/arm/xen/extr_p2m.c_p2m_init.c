
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int p2m_lock ;
 int rwlock_init (int *) ;

__attribute__((used)) static int p2m_init(void)
{
 rwlock_init(&p2m_lock);
 return 0;
}
