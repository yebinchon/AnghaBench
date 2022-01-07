
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_CHARACTERISTIC_STRING ;
 int syscall (int ,int,int,char*,int) ;

void trap_Characteristic_String(int character, int index, char *buf, int size) {
 syscall( BOTLIB_AI_CHARACTERISTIC_STRING, character, index, buf, size );
}
