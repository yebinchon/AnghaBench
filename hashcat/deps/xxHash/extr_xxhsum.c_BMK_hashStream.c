
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h64 ;
typedef int h32 ;
typedef int algoType ;
typedef int XXH64_state_t ;
typedef int XXH32_state_t ;
typedef int U64 ;
typedef int U32 ;
typedef int FILE ;


 int XXH32_digest (int *) ;
 int XXH32_reset (int *,int ) ;
 int XXH32_update (int *,void*,size_t) ;
 int XXH64_digest (int *) ;
 int XXH64_reset (int *,int ) ;
 int XXH64_update (int *,void*,size_t) ;
 int XXHSUM32_DEFAULT_SEED ;
 int XXHSUM64_DEFAULT_SEED ;


 size_t fread (void*,int,size_t,int *) ;
 int memcpy (void*,int const*,int) ;

__attribute__((used)) static void BMK_hashStream(void* xxhHashValue, const algoType hashType, FILE* inFile, void* buffer, size_t blockSize)
{
    XXH64_state_t state64;
    XXH32_state_t state32;
    size_t readSize;


    XXH32_reset(&state32, XXHSUM32_DEFAULT_SEED);
    XXH64_reset(&state64, XXHSUM64_DEFAULT_SEED);


    readSize = 1;
    while (readSize) {
        readSize = fread(buffer, 1, blockSize, inFile);
        switch(hashType)
        {
        case 129:
            XXH32_update(&state32, buffer, readSize);
            break;
        case 128:
            XXH64_update(&state64, buffer, readSize);
            break;
        default:
            break;
        }
    }

    switch(hashType)
    {
    case 129:
        { U32 const h32 = XXH32_digest(&state32);
            memcpy(xxhHashValue, &h32, sizeof(h32));
            break;
        }
    case 128:
        { U64 const h64 = XXH64_digest(&state64);
            memcpy(xxhHashValue, &h64, sizeof(h64));
            break;
        }
    default:
            break;
    }
}
