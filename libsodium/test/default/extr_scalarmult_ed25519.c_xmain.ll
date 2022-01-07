; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_scalarmult_ed25519.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_scalarmult_ed25519.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_scalarmult_ed25519_SCALARBYTES = common dso_local global i64 0, align 8
@crypto_scalarmult_ed25519_BYTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"crypto_scalarmult_ed25519_base() failed\0A\00", align 1
@B = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"crypto_scalarmult_ed25519() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"crypto_scalarmult_ed25519_base(n) != crypto_scalarmult_ed25519(n, 9)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"crypto_scalarmult_ed25519_base(0) passed\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"crypto_scalarmult_ed25519(0) passed\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"crypto_scalarmult_ed25519_noclamp(0) passed\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"crypto_scalarmult_ed25519_noclamp() failed\0A\00", align 1
@non_canonical_p = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"crypto_scalarmult_ed25519() didn't fail\0A\00", align 1
@non_canonical_invalid_p = common dso_local global i8* null, align 8
@max_canonical_p = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"clamping not applied\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"crypto_scalarmult_ed25519_base_noclamp() failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"inconsistent clamping\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"crypto_scalarmult_ed25519_noclamp() didn't fail\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %6 = load i64, i64* @crypto_scalarmult_ed25519_SCALARBYTES, align 8
  %7 = call i64 @sodium_malloc(i64 %6)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %2, align 8
  %9 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %10 = call i64 @sodium_malloc(i64 %9)
  %11 = inttoptr i64 %10 to i8*
  store i8* %11, i8** %3, align 8
  %12 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %13 = call i64 @sodium_malloc(i64 %12)
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %4, align 8
  %15 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %16 = call i64 @sodium_malloc(i64 %15)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = load i64, i64* @crypto_scalarmult_ed25519_SCALARBYTES, align 8
  %20 = call i32 @randombytes_buf(i8* %18, i64 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %2, align 8
  %23 = call i32 @crypto_scalarmult_ed25519_base(i8* %21, i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %0
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* @B, align 4
  %30 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %31 = call i32 @memcpy(i8* %28, i32 %29, i64 %30)
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call i32 @crypto_scalarmult_ed25519(i8* %32, i8* %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %27
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %5, align 8
  %42 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %43 = call i64 @memcmp(i8* %40, i8* %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %39
  %48 = load i8*, i8** %2, align 8
  %49 = load i64, i64* @crypto_scalarmult_ed25519_SCALARBYTES, align 8
  %50 = call i32 @memset(i8* %48, i32 0, i64 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %2, align 8
  %53 = call i32 @crypto_scalarmult_ed25519_base(i8* %51, i8* %52)
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %47
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %2, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 @crypto_scalarmult_ed25519(i8* %58, i8* %59, i8* %60)
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %57
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** %2, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = call i32 @crypto_scalarmult_ed25519_noclamp(i8* %66, i8* %67, i8* %68)
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %65
  %74 = load i8*, i8** %2, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 1, i8* %75, align 1
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %2, align 8
  %78 = call i32 @crypto_scalarmult_ed25519_base(i8* %76, i8* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %73
  %81 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %73
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %2, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @crypto_scalarmult_ed25519(i8* %83, i8* %84, i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %82
  %91 = load i8*, i8** %5, align 8
  %92 = load i8*, i8** %2, align 8
  %93 = load i8*, i8** %3, align 8
  %94 = call i32 @crypto_scalarmult_ed25519_noclamp(i8* %91, i8* %92, i8* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %90
  %99 = load i8*, i8** %4, align 8
  %100 = load i8*, i8** %2, align 8
  %101 = load i8*, i8** @non_canonical_p, align 8
  %102 = call i32 @crypto_scalarmult_ed25519(i8* %99, i8* %100, i8* %101)
  %103 = icmp ne i32 %102, -1
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %98
  %107 = load i8*, i8** %4, align 8
  %108 = load i8*, i8** %2, align 8
  %109 = load i8*, i8** @non_canonical_invalid_p, align 8
  %110 = call i32 @crypto_scalarmult_ed25519(i8* %107, i8* %108, i8* %109)
  %111 = icmp ne i32 %110, -1
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %114

114:                                              ; preds = %112, %106
  %115 = load i8*, i8** %4, align 8
  %116 = load i8*, i8** %2, align 8
  %117 = load i8*, i8** @max_canonical_p, align 8
  %118 = call i32 @crypto_scalarmult_ed25519(i8* %115, i8* %116, i8* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %114
  %123 = load i8*, i8** %2, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 0
  store i8 9, i8* %124, align 1
  %125 = load i8*, i8** %4, align 8
  %126 = load i8*, i8** %2, align 8
  %127 = load i8*, i8** %3, align 8
  %128 = call i32 @crypto_scalarmult_ed25519(i8* %125, i8* %126, i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %122
  %133 = load i8*, i8** %5, align 8
  %134 = load i8*, i8** %2, align 8
  %135 = load i8*, i8** %3, align 8
  %136 = call i32 @crypto_scalarmult_ed25519_noclamp(i8* %133, i8* %134, i8* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %132
  %141 = load i8*, i8** %4, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %144 = call i64 @memcmp(i8* %141, i8* %142, i64 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %140
  %149 = load i8*, i8** %2, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  store i8 9, i8* %150, align 1
  %151 = load i8*, i8** %4, align 8
  %152 = load i8*, i8** %2, align 8
  %153 = call i32 @crypto_scalarmult_ed25519_base(i8* %151, i8* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %148
  %156 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %148
  %158 = load i8*, i8** %5, align 8
  %159 = load i8*, i8** %2, align 8
  %160 = call i64 @crypto_scalarmult_ed25519_base_noclamp(i8* %158, i8* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %157
  %165 = load i8*, i8** %4, align 8
  %166 = load i8*, i8** %5, align 8
  %167 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %168 = call i64 @memcmp(i8* %165, i8* %166, i64 %167)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %164
  %171 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %164
  %173 = load i8*, i8** %2, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  store i8 8, i8* %174, align 1
  %175 = load i8*, i8** %2, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 31
  store i8 64, i8* %176, align 1
  %177 = load i8*, i8** %5, align 8
  %178 = load i8*, i8** %2, align 8
  %179 = load i8*, i8** %3, align 8
  %180 = call i32 @crypto_scalarmult_ed25519_noclamp(i8* %177, i8* %178, i8* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %172
  %185 = load i8*, i8** %4, align 8
  %186 = load i8*, i8** %5, align 8
  %187 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %188 = call i64 @memcmp(i8* %185, i8* %186, i64 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %184
  %191 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %192

192:                                              ; preds = %190, %184
  %193 = load i8*, i8** %3, align 8
  %194 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %195 = call i32 @memset(i8* %193, i32 0, i64 %194)
  %196 = load i8*, i8** %4, align 8
  %197 = load i8*, i8** %2, align 8
  %198 = load i8*, i8** %3, align 8
  %199 = call i32 @crypto_scalarmult_ed25519(i8* %196, i8* %197, i8* %198)
  %200 = icmp ne i32 %199, -1
  br i1 %200, label %201, label %203

201:                                              ; preds = %192
  %202 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %192
  %204 = load i8*, i8** %4, align 8
  %205 = load i8*, i8** %2, align 8
  %206 = load i8*, i8** %3, align 8
  %207 = call i32 @crypto_scalarmult_ed25519_noclamp(i8* %204, i8* %205, i8* %206)
  %208 = icmp ne i32 %207, -1
  br i1 %208, label %209, label %211

209:                                              ; preds = %203
  %210 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %203
  %212 = load i8*, i8** %2, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  store i8 8, i8* %213, align 1
  %214 = load i8*, i8** %4, align 8
  %215 = load i8*, i8** %2, align 8
  %216 = load i8*, i8** %3, align 8
  %217 = call i32 @crypto_scalarmult_ed25519(i8* %214, i8* %215, i8* %216)
  %218 = icmp ne i32 %217, -1
  br i1 %218, label %219, label %221

219:                                              ; preds = %211
  %220 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %211
  %222 = load i8*, i8** %4, align 8
  %223 = load i8*, i8** %2, align 8
  %224 = load i8*, i8** %3, align 8
  %225 = call i32 @crypto_scalarmult_ed25519_noclamp(i8* %222, i8* %223, i8* %224)
  %226 = icmp ne i32 %225, -1
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  br label %229

229:                                              ; preds = %227, %221
  %230 = load i8*, i8** %5, align 8
  %231 = call i32 @sodium_free(i8* %230)
  %232 = load i8*, i8** %4, align 8
  %233 = call i32 @sodium_free(i8* %232)
  %234 = load i8*, i8** %3, align 8
  %235 = call i32 @sodium_free(i8* %234)
  %236 = load i8*, i8** %2, align 8
  %237 = call i32 @sodium_free(i8* %236)
  %238 = load i64, i64* @crypto_scalarmult_ed25519_BYTES, align 8
  %239 = call i64 (...) @crypto_scalarmult_ed25519_bytes()
  %240 = icmp eq i64 %238, %239
  %241 = zext i1 %240 to i32
  %242 = call i32 @assert(i32 %241)
  %243 = load i64, i64* @crypto_scalarmult_ed25519_SCALARBYTES, align 8
  %244 = call i64 (...) @crypto_scalarmult_ed25519_scalarbytes()
  %245 = icmp eq i64 %243, %244
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  %248 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  ret i32 0
}

declare dso_local i64 @sodium_malloc(i64) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @crypto_scalarmult_ed25519_base(i8*, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @crypto_scalarmult_ed25519(i8*, i8*, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @crypto_scalarmult_ed25519_noclamp(i8*, i8*, i8*) #1

declare dso_local i64 @crypto_scalarmult_ed25519_base_noclamp(i8*, i8*) #1

declare dso_local i32 @sodium_free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_scalarmult_ed25519_bytes(...) #1

declare dso_local i64 @crypto_scalarmult_ed25519_scalarbytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
