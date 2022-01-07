
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t pcre_uchar ;
typedef int BOOL ;


 int GET (size_t const*,int) ;
 size_t const OP_ALT ;
 int OP_lengths ;
 int * PRIV (int ) ;

__attribute__((used)) static const pcre_uchar*
first_significant_code(const pcre_uchar *code, BOOL skipassert)
{
for (;;)
  {
  switch ((int)*code)
    {
    case 136:
    case 138:
    case 137:
    if (!skipassert) return code;
    do code += GET(code, 1); while (*code == OP_ALT);
    code += PRIV(OP_lengths)[*code];
    break;

    case 128:
    case 130:
    if (!skipassert) return code;


    case 135:
    case 134:
    case 132:
    case 129:
    case 131:
    case 133:
    code += PRIV(OP_lengths)[*code];
    break;

    default:
    return code;
    }
  }

}
