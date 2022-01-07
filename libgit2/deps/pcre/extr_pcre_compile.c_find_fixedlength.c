
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* group; struct TYPE_5__* prev; } ;
typedef TYPE_1__ recurse_check ;
typedef int pcre_uchar ;
struct TYPE_6__ {scalar_t__ start_code; } ;
typedef TYPE_2__ compile_data ;
typedef int BOOL ;


 int GET (int*,int) ;
 int GET2 (int*,int) ;
 int GET_EXTRALEN (int) ;
 int HAS_EXTRALEN (int) ;
 int IMM2_SIZE ;
 int LINK_SIZE ;
 int OP_lengths ;
 int* PRIV (int ) ;

__attribute__((used)) static int
find_fixedlength(pcre_uchar *code, BOOL utf, BOOL atend, compile_data *cd,
  recurse_check *recurses)
{
int length = -1;
recurse_check this_recurse;
register int branchlength = 0;
register pcre_uchar *cc = code + 1 + LINK_SIZE;




for (;;)
  {
  int d;
  pcre_uchar *ce, *cs;
  register pcre_uchar op = *cc;

  switch (op)
    {





    case 272:
    case 278:
    case 184:
    case 183:
    case 263:
    d = find_fixedlength(cc + ((op == 272)? IMM2_SIZE : 0), utf, atend, cd,
      recurses);
    if (d < 0) return d;
    branchlength += d;
    do cc += GET(cc, 1); while (*cc == 287);
    cc += 1 + LINK_SIZE;
    break;







    case 287:
    case 233:
    case 241:
    case 289:
    case 280:
    if (length < 0) length = branchlength;
      else if (length != branchlength) return -1;
    if (*cc != 287) return length;
    cc += 1 + LINK_SIZE;
    branchlength = 0;
    break;





    case 167:
    if (!atend) return -3;
    cs = ce = (pcre_uchar *)cd->start_code + GET(cc, 1);
    do ce += GET(ce, 1); while (*ce == 287);
    if (cc > cs && cc < ce) return -1;
    else
      {
      recurse_check *r = recurses;
      for (r = recurses; r != ((void*)0); r = r->prev) if (r->group == cs) break;
      if (r != ((void*)0)) return -1;
      }
    this_recurse.prev = recurses;
    this_recurse.group = cs;
    d = find_fixedlength(cs + IMM2_SIZE, utf, atend, cd, &this_recurse);
    if (d < 0) return d;
    branchlength += d;
    cc += 1 + LINK_SIZE;
    break;



    case 283:
    case 279:
    case 282:
    case 281:
    do cc += GET(cc, 1); while (*cc == 287);
    cc += 1 + LINK_SIZE;
    break;



    case 229:
    case 170:
    case 154:
    case 148:
    cc += cc[1] + PRIV(OP_lengths)[*cc];
    break;

    case 273:
    case 268:
    case 267:
    case 265:
    case 264:
    case 262:
    case 249:
    case 247:
    case 244:
    case 243:
    case 242:
    case 240:
    case 239:
    case 235:
    case 185:
    case 171:
    case 164:
    case 163:
    case 157:
    case 156:
    case 153:
    case 152:
    case 149:
    case 129:
    cc += PRIV(OP_lengths)[*cc];
    break;



    case 270:
    case 269:
    case 219:
    case 216:
    branchlength++;
    cc += 2;



    break;




    case 238:
    case 237:
    case 218:
    case 217:
    branchlength += (int)GET2(cc,1);
    cc += 2 + IMM2_SIZE;



    break;

    case 147:
    branchlength += GET2(cc,1);
    if (cc[1 + IMM2_SIZE] == 172 || cc[1 + IMM2_SIZE] == 197)
      cc += 2;
    cc += 1 + IMM2_SIZE + 1;
    break;



    case 172:
    case 197:
    cc += 2;


    case 234:
    case 132:
    case 189:
    case 188:
    case 190:
    case 248:
    case 187:
    case 131:
    case 186:
    case 130:
    case 286:
    case 288:
    branchlength++;
    cc++;
    break;




    case 285:
    return -2;



    case 266:
    case 220:
    cc += PRIV(OP_lengths)[266];


    switch (*cc)
      {
      case 250:
      case 258:
      case 257:
      case 261:
      case 252:
      case 260:
      case 253:
      case 256:
      case 255:
      return -1;

      case 251:
      case 259:
      case 254:
      if (GET2(cc,1) != GET2(cc,1+IMM2_SIZE)) return -1;
      branchlength += (int)GET2(cc,1);
      cc += 1 + 2 * IMM2_SIZE;
      break;

      default:
      branchlength++;
      }
    break;



    case 284:
    case 277:
    case 276:
    case 275:
    case 274:
    case 271:
    case 236:
    case 232:
    case 231:
    case 230:
    case 228:
    case 227:
    case 226:
    case 225:
    case 224:
    case 223:
    case 222:
    case 221:
    case 215:
    case 214:
    case 213:
    case 212:
    case 211:
    case 210:
    case 209:
    case 208:
    case 207:
    case 206:
    case 205:
    case 204:
    case 203:
    case 202:
    case 201:
    case 200:
    case 199:
    case 198:
    case 196:
    case 195:
    case 194:
    case 193:
    case 192:
    case 191:
    case 182:
    case 181:
    case 180:
    case 179:
    case 178:
    case 177:
    case 176:
    case 175:
    case 174:
    case 173:
    case 169:
    case 168:
    case 166:
    case 165:
    case 246:
    case 245:
    case 162:
    case 161:
    case 160:
    case 159:
    case 158:
    case 155:
    case 151:
    case 150:
    case 146:
    case 145:
    case 144:
    case 143:
    case 142:
    case 141:
    case 140:
    case 139:
    case 138:
    case 137:
    case 136:
    case 135:
    case 134:
    case 133:
    return -1;




    default:
    return -4;
    }
  }

}
