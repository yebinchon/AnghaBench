
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int on_connection_close () ;

__attribute__((used)) static void on_socketclose(void *data)
{
    on_connection_close();
}
