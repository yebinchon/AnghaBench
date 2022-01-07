
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
 char const* PA_000 ;
 char const* PA_001 ;
 char const* PA_002 ;
 char const* PA_003 ;
 char const* PA_004 ;
 char const* PA_005 ;
 char const* PA_006 ;
 char const* PA_007 ;
 char const* PA_008 ;
 char const* PA_009 ;
 char const* PA_010 ;
 char const* PA_011 ;
 char const* PA_012 ;
 char const* PA_013 ;
 char const* PA_014 ;
 char const* PA_015 ;
 char const* PA_016 ;
 char const* PA_017 ;
 char const* PA_018 ;
 char const* PA_019 ;
 char const* PA_020 ;
 char const* PA_021 ;
 char const* PA_022 ;
 char const* PA_023 ;
 char const* PA_024 ;
 char const* PA_025 ;
 char const* PA_026 ;
 char const* PA_027 ;
 char const* PA_028 ;
 char const* PA_029 ;
 char const* PA_030 ;
 char const* PA_031 ;
 char const* PA_032 ;
 char const* PA_033 ;
 char const* PA_034 ;
 char const* PA_035 ;
 char const* PA_036 ;
 char const* PA_037 ;
 char const* PA_255 ;

const char *strparser (const u32 parser_status)
{
  switch (parser_status)
  {
    case 142: return PA_000;
    case 165: return PA_001;
    case 163: return PA_002;
    case 164: return PA_003;
    case 160: return PA_004;
    case 159: return PA_005;
    case 136: return PA_006;
    case 135: return PA_007;
    case 137: return PA_008;
    case 134: return PA_009;
    case 133: return PA_010;
    case 157: return PA_011;
    case 158: return PA_012;
    case 140: return PA_013;
    case 139: return PA_014;
    case 131: return PA_015;
    case 128: return PA_016;
    case 132: return PA_017;
    case 161: return PA_018;
    case 162: return PA_019;
    case 138: return PA_020;
    case 150: return PA_021;
    case 144: return PA_022;
    case 143: return PA_023;
    case 151: return PA_024;
    case 152: return PA_025;
    case 148: return PA_026;
    case 146: return PA_027;
    case 147: return PA_028;
    case 145: return PA_029;
    case 149: return PA_030;
    case 155: return PA_031;
    case 154: return PA_032;
    case 156: return PA_033;
    case 130: return PA_034;
    case 129: return PA_035;
    case 153: return PA_036;
    case 141: return PA_037;
  }

  return PA_255;
}
