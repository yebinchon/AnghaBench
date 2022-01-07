
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int bloc ;

__attribute__((used)) static int get_bit (byte *fin) {
 int t;
 t = (fin[(bloc>>3)] >> (bloc&7)) & 0x1;
 bloc++;
 return t;
}
