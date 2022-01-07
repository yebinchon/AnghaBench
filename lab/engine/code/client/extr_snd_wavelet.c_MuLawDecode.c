
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;



short MuLawDecode(byte uLaw) {
 signed long adjusted;
 byte exponent, mantissa;

 uLaw = ~uLaw;
 exponent = (uLaw>>4) & 0x7;
 mantissa = (uLaw&0xf) + 16;
 adjusted = (mantissa << (exponent +3)) - 128 - 4;

 return (uLaw & 0x80)? adjusted : -adjusted;
}
