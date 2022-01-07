
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int cleanup_children (int ,int ) ;

__attribute__((used)) static void cleanup_children_on_exit(void)
{
 cleanup_children(SIGTERM, 0);
}
