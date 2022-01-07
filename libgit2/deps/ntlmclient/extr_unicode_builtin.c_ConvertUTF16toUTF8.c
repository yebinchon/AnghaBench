
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UTF8 ;
typedef scalar_t__ UTF32 ;
typedef scalar_t__ UTF16 ;
typedef int ConversionResult ;
typedef scalar_t__ ConversionFlags ;


 scalar_t__ UNI_REPLACEMENT_CHAR ;
 scalar_t__ UNI_SUR_HIGH_END ;
 scalar_t__ UNI_SUR_HIGH_START ;
 scalar_t__ UNI_SUR_LOW_END ;
 scalar_t__ UNI_SUR_LOW_START ;
 int conversionOK ;
 scalar_t__* firstByteMark ;
 scalar_t__ halfBase ;
 scalar_t__ halfShift ;
 int sourceExhausted ;
 int sourceIllegal ;
 scalar_t__ strictConversion ;
 int targetExhausted ;

__attribute__((used)) static ConversionResult ConvertUTF16toUTF8 (
        const UTF16** sourceStart, const UTF16* sourceEnd,
        UTF8** targetStart, UTF8* targetEnd, ConversionFlags flags) {
    ConversionResult result = conversionOK;
    const UTF16* source = *sourceStart;
    UTF8* target = *targetStart;
    while (source < sourceEnd) {
        UTF32 ch;
        unsigned short bytesToWrite = 0;
        const UTF32 byteMask = 0xBF;
        const UTF32 byteMark = 0x80;
        const UTF16* oldSource = source;
        ch = *source++;

        if (ch >= UNI_SUR_HIGH_START && ch <= UNI_SUR_HIGH_END) {

            if (source < sourceEnd) {
                UTF32 ch2 = *source;

                if (ch2 >= UNI_SUR_LOW_START && ch2 <= UNI_SUR_LOW_END) {
                    ch = ((ch - UNI_SUR_HIGH_START) << halfShift)
                        + (ch2 - UNI_SUR_LOW_START) + halfBase;
                    ++source;
                } else if (flags == strictConversion) {
                    --source;
                    result = sourceIllegal;
                    break;
                }
            } else {
                --source;
                result = sourceExhausted;
                break;
            }
        } else if (flags == strictConversion) {

            if (ch >= UNI_SUR_LOW_START && ch <= UNI_SUR_LOW_END) {
                --source;
                result = sourceIllegal;
                break;
            }
        }

        if (ch < (UTF32)0x80) { bytesToWrite = 1;
        } else if (ch < (UTF32)0x800) { bytesToWrite = 2;
        } else if (ch < (UTF32)0x10000) { bytesToWrite = 3;
        } else if (ch < (UTF32)0x110000) { bytesToWrite = 4;
        } else { bytesToWrite = 3;
                                            ch = UNI_REPLACEMENT_CHAR;
        }

        target += bytesToWrite;
        if (target > targetEnd) {
            source = oldSource;
            target -= bytesToWrite; result = targetExhausted; break;
        }
        switch (bytesToWrite) {
            case 4: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
            case 3: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
            case 2: *--target = (UTF8)((ch | byteMark) & byteMask); ch >>= 6;
            case 1: *--target = (UTF8)(ch | firstByteMark[bytesToWrite]);
        }
        target += bytesToWrite;
    }
    *sourceStart = source;
    *targetStart = target;
    return result;
}
