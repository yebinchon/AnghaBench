
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long AB ;
 unsigned long NOTYPE ;
 unsigned long XA ;
 unsigned long XB ;
 unsigned long XCR ;

__attribute__((used)) static unsigned long insn_type(unsigned long speinsn)
{
 unsigned long ret = NOTYPE;

 switch (speinsn & 0x7ff) {
 case 161: ret = XA; break;
 case 160: ret = AB; break;
 case 159: ret = XB; break;
 case 157: ret = XCR; break;
 case 156: ret = XCR; break;
 case 155: ret = XCR; break;
 case 154: ret = XB; break;
 case 153: ret = XB; break;
 case 152: ret = XB; break;
 case 151: ret = XB; break;
 case 150: ret = XB; break;
 case 149: ret = XB; break;
 case 148: ret = AB; break;
 case 147: ret = AB; break;
 case 146: ret = XA; break;
 case 145: ret = XA; break;
 case 144: ret = AB; break;
 case 158: ret = XB; break;

 case 143: ret = XA; break;
 case 142: ret = AB; break;
 case 141: ret = XCR; break;
 case 140: ret = XCR; break;
 case 139: ret = XCR; break;
 case 138: ret = XB; break;
 case 137: ret = XB; break;
 case 136: ret = XB; break;
 case 135: ret = XB; break;
 case 134: ret = XB; break;
 case 133: ret = XB; break;
 case 132: ret = AB; break;
 case 131: ret = AB; break;
 case 130: ret = XA; break;
 case 129: ret = XA; break;
 case 128: ret = AB; break;

 case 180: ret = XA; break;
 case 179: ret = AB; break;
 case 178: ret = XB; break;
 case 177: ret = XCR; break;
 case 176: ret = XCR; break;
 case 175: ret = XCR; break;
 case 174: ret = XB; break;
 case 173: ret = XB; break;
 case 172: ret = XB; break;
 case 171: ret = XB; break;
 case 170: ret = XB; break;
 case 169: ret = XB; break;
 case 168: ret = XB; break;
 case 167: ret = XB; break;
 case 166: ret = AB; break;
 case 165: ret = AB; break;
 case 164: ret = XA; break;
 case 163: ret = XA; break;
 case 162: ret = AB; break;
 }

 return ret;
}
