
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *SDL_AMediaCodec_getColorFormatName(int colorFormat)
{
    switch (colorFormat) {
    case 163:
        return "Format8bitRGB332";
    case 172:
        return "Format8bitRGB332";
    case 189:
        return "Format12bitRGB444";
    case 187:
        return "Format16bitARGB4444";
    case 188:
        return "Format16bitARGB1555";
    case 185:
        return "Format16bitRGB565";
    case 186:
        return "Format16bitBGR565";
    case 182:
        return "Format18bitRGB666";
    case 183:
        return "Format18bitARGB1665";
    case 181:
        return "Format19bitARGB1666";
    case 176:
        return "Format24bitRGB888";
    case 177:
        return "Format24bitBGR888";
    case 178:
        return "Format24bitARGB1887";
    case 175:
        return "Format25bitARGB1888";
    case 173:
        return "Format32bitBGRA8888";
    case 174:
        return "Format32bitARGB8888";
    case 155:
        return "FormatYUV411Planar";
    case 156:
        return "FormatYUV411PackedPlanar";
    case 151:
        return "FormatYUV420Planar";
    case 153:
        return "FormatYUV420PackedPlanar";
    case 150:
        return "FormatYUV420SemiPlanar";
    case 147:
        return "FormatYUV422Planar";
    case 149:
        return "FormatYUV422PackedPlanar";
    case 146:
        return "FormatYUV422SemiPlanar";
    case 158:
        return "FormatYCbYCr";
    case 157:
        return "FormatYCrYCb";
    case 171:
        return "FormatCbYCrY";
    case 170:
        return "FormatCrYCbY";
    case 145:
        return "FormatYUV444Interleaved";
    case 161:
        return "FormatRawBayer8bit";
    case 162:
        return "FormatRawBayer10bit";
    case 160:
        return "FormatRawBayer8bitcompressed";
    case 168:
        return "FormatL2";
    case 165:
        return "FormatL4";
    case 164:
        return "FormatL8";
    case 169:
        return "FormatL16";
    case 167:
        return "FormatL24";
    case 166:
        return "FormatL32";
    case 152:
        return "FormatYUV420PackedSemiPlanar";
    case 148:
        return "FormatYUV422PackedSemiPlanar";
    case 184:
        return "Format18BitBGR666";
    case 179:
        return "Format24BitARGB6666";
    case 180:
        return "Format24BitABGR6666";






    case 159:
        return "FormatSurface";
    case 154:
        return "FormatYUV420Flexible";







    case 142:
        return "INTEL_FormatYUV420PackedSemiPlanar";
    case 141:
        return "INTEL_FormatYUV420PackedSemiPlanar_Tiled";


    case 135:
        return "QCOM_FormatYVU420SemiPlanar";
    case 136:
        return "QCOM_FormatYVU420PackedSemiPlanar32m4ka";
    case 138:
        return "QCOM_FormatYUV420PackedSemiPlanar16m2ka";
    case 137:
        return "QCOM_FormatYUV420PackedSemiPlanar64x32Tile2m8ka";
    case 140:
        return "QCOM_FORMATYUV420PackedSemiPlanar32m";
    case 139:
        return "QCOM_FORMATYUV420PackedSemiPlanar32mMultiView";


    case 132:
        return "SEC_FormatNV12TPhysicalAddress";
    case 134:
        return "SEC_FormatNV12LPhysicalAddress";
    case 133:
        return "SEC_FormatNV12LVirtualAddress";
    case 131:
        return "SEC_FormatNV12Tiled";
    case 130:
        return "SEC_FormatNV21LPhysicalAddress";
    case 129:
        return "SEC_FormatNV21Linear";


    case 128:
        return "TI_FormatYUV420PackedSemiPlanar";

    default:
        return "FormatUnknown";
    }
}
