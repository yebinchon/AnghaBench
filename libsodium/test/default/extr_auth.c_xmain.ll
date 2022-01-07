; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_auth.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_auth.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@a = common dso_local global i64* null, align 8
@c = common dso_local global i64* null, align 8
@key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@a2 = common dso_local global i64* null, align 8
@key2 = common dso_local global i32 0, align 4
@guard_page = common dso_local global i64* null, align 8
@a3 = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"hmacsha512256\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %6 = call i32 (...) @crypto_auth_hmacsha512_statebytes()
  %7 = sext i32 %6 to i64
  %8 = icmp eq i64 %7, 4
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64*, i64** @a, align 8
  %12 = load i64*, i64** @c, align 8
  %13 = load i32, i32* @key, align 4
  %14 = call i32 @crypto_auth(i64* %11, i64* %12, i32 7, i32 %13)
  store i64 0, i64* %5, align 8
  br label %15

15:                                               ; preds = %31, %0
  %16 = load i64, i64* %5, align 8
  %17 = icmp ult i64 %16, 8
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load i64*, i64** @a, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = urem i64 %25, 8
  %27 = icmp eq i64 %26, 7
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %18
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %15

34:                                               ; preds = %15
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @key, align 4
  %37 = call i32 @crypto_auth_hmacsha512_init(i32* %2, i32 %36, i32 4)
  %38 = load i64*, i64** @c, align 8
  %39 = call i32 @crypto_auth_hmacsha512_update(i32* %2, i64* %38, i32 1)
  %40 = load i64*, i64** @c, align 8
  %41 = call i32 @crypto_auth_hmacsha512_update(i32* %2, i64* %40, i32 6)
  %42 = load i64*, i64** @a2, align 8
  %43 = call i32 @crypto_auth_hmacsha512_final(i32* %2, i64* %42)
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %60, %34
  %45 = load i64, i64* %5, align 8
  %46 = icmp ult i64 %45, 8
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i64*, i64** @a2, align 8
  %49 = load i64, i64* %5, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i64, i64* %5, align 8
  %55 = urem i64 %54, 8
  %56 = icmp eq i64 %55, 7
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %47
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %5, align 8
  br label %44

63:                                               ; preds = %44
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @key2, align 4
  %66 = call i32 @crypto_auth_hmacsha512_init(i32* %2, i32 %65, i32 4)
  %67 = load i64*, i64** @c, align 8
  %68 = call i32 @crypto_auth_hmacsha512_update(i32* %2, i64* %67, i32 1)
  %69 = load i64*, i64** @c, align 8
  %70 = call i32 @crypto_auth_hmacsha512_update(i32* %2, i64* %69, i32 6)
  %71 = load i64*, i64** @a2, align 8
  %72 = call i32 @crypto_auth_hmacsha512_final(i32* %2, i64* %71)
  store i64 0, i64* %5, align 8
  br label %73

73:                                               ; preds = %89, %63
  %74 = load i64, i64* %5, align 8
  %75 = icmp ult i64 %74, 8
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load i64*, i64** @a2, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load i64, i64* %5, align 8
  %84 = urem i64 %83, 8
  %85 = icmp eq i64 %84, 7
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %76
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %5, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %5, align 8
  br label %73

92:                                               ; preds = %73
  %93 = load i64*, i64** @a2, align 8
  %94 = call i32 @memset(i64* %93, i32 0, i32 8)
  %95 = load i32, i32* @key2, align 4
  %96 = call i32 @crypto_auth_hmacsha256_init(i32* %3, i32 %95, i32 4)
  %97 = load i64*, i64** @guard_page, align 8
  %98 = call i32 @crypto_auth_hmacsha256_update(i32* %3, i64* %97, i32 0)
  %99 = load i64*, i64** @c, align 8
  %100 = call i32 @crypto_auth_hmacsha256_update(i32* %3, i64* %99, i32 1)
  %101 = load i64*, i64** @c, align 8
  %102 = call i32 @crypto_auth_hmacsha256_update(i32* %3, i64* %101, i32 6)
  %103 = load i64*, i64** @a2, align 8
  %104 = call i32 @crypto_auth_hmacsha256_final(i32* %3, i64* %103)
  store i64 0, i64* %5, align 8
  br label %105

105:                                              ; preds = %121, %92
  %106 = load i64, i64* %5, align 8
  %107 = icmp ult i64 %106, 8
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  %109 = load i64*, i64** @a2, align 8
  %110 = load i64, i64* %5, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %113)
  %115 = load i64, i64* %5, align 8
  %116 = urem i64 %115, 8
  %117 = icmp eq i64 %116, 7
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %108
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %5, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %5, align 8
  br label %105

124:                                              ; preds = %105
  %125 = load i64*, i64** @a2, align 8
  %126 = call i32 @memset(i64* %125, i32 0, i32 8)
  %127 = load i32, i32* @key, align 4
  %128 = call i32 @crypto_auth_hmacsha512_init(i32* %2, i32 %127, i32 4)
  %129 = load i64*, i64** @a2, align 8
  %130 = call i32 @crypto_auth_hmacsha512_final(i32* %2, i64* %129)
  %131 = load i64*, i64** @a3, align 8
  %132 = call i32 @memset(i64* %131, i32 0, i32 8)
  %133 = load i32, i32* @key, align 4
  %134 = call i32 @crypto_auth_hmacsha512_init(i32* %2, i32 %133, i32 4)
  %135 = load i64*, i64** @a2, align 8
  %136 = call i32 @crypto_auth_hmacsha512_update(i32* %2, i64* %135, i32 0)
  %137 = load i64*, i64** @a3, align 8
  %138 = call i32 @crypto_auth_hmacsha512_final(i32* %2, i64* %137)
  %139 = load i64*, i64** @a2, align 8
  %140 = load i64*, i64** @a3, align 8
  %141 = call i64 @sodium_memcmp(i64* %139, i64* %140, i32 8)
  %142 = icmp eq i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i64*, i64** @a3, align 8
  %146 = call i32 @memset(i64* %145, i32 0, i32 8)
  %147 = load i32, i32* @key, align 4
  %148 = call i32 @crypto_auth_hmacsha512_init(i32* %2, i32 %147, i32 4)
  %149 = load i64*, i64** @guard_page, align 8
  %150 = call i32 @crypto_auth_hmacsha512_update(i32* %2, i64* %149, i32 0)
  %151 = load i64*, i64** @a3, align 8
  %152 = call i32 @crypto_auth_hmacsha512_final(i32* %2, i64* %151)
  %153 = load i64*, i64** @a2, align 8
  %154 = load i64*, i64** @a3, align 8
  %155 = call i64 @sodium_memcmp(i64* %153, i64* %154, i32 8)
  %156 = icmp eq i64 %155, 0
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i64*, i64** @a2, align 8
  %160 = call i32 @memset(i64* %159, i32 0, i32 8)
  %161 = load i32, i32* @key, align 4
  %162 = call i32 @crypto_auth_hmacsha512256_init(i32* %4, i32 %161, i32 4)
  %163 = load i64*, i64** @a2, align 8
  %164 = call i32 @crypto_auth_hmacsha512256_final(i32* %4, i64* %163)
  %165 = load i64*, i64** @a3, align 8
  %166 = call i32 @memset(i64* %165, i32 0, i32 8)
  %167 = load i32, i32* @key, align 4
  %168 = call i32 @crypto_auth_hmacsha512256_init(i32* %4, i32 %167, i32 4)
  %169 = load i64*, i64** @a2, align 8
  %170 = call i32 @crypto_auth_hmacsha512256_update(i32* %4, i64* %169, i32 0)
  %171 = load i64*, i64** @a3, align 8
  %172 = call i32 @crypto_auth_hmacsha512256_final(i32* %4, i64* %171)
  %173 = load i64*, i64** @a2, align 8
  %174 = load i64*, i64** @a3, align 8
  %175 = call i64 @sodium_memcmp(i64* %173, i64* %174, i32 8)
  %176 = icmp eq i64 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load i64*, i64** @a3, align 8
  %180 = call i32 @memset(i64* %179, i32 0, i32 8)
  %181 = load i32, i32* @key, align 4
  %182 = call i32 @crypto_auth_hmacsha512256_init(i32* %4, i32 %181, i32 4)
  %183 = load i64*, i64** @guard_page, align 8
  %184 = call i32 @crypto_auth_hmacsha512256_update(i32* %4, i64* %183, i32 0)
  %185 = load i64*, i64** @a3, align 8
  %186 = call i32 @crypto_auth_hmacsha512256_final(i32* %4, i64* %185)
  %187 = load i64*, i64** @a2, align 8
  %188 = load i64*, i64** @a3, align 8
  %189 = call i64 @sodium_memcmp(i64* %187, i64* %188, i32 8)
  %190 = icmp eq i64 %189, 0
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i64*, i64** @a2, align 8
  %194 = call i32 @memset(i64* %193, i32 0, i32 8)
  %195 = load i32, i32* @key, align 4
  %196 = call i32 @crypto_auth_hmacsha256_init(i32* %3, i32 %195, i32 4)
  %197 = load i64*, i64** @a2, align 8
  %198 = call i32 @crypto_auth_hmacsha256_final(i32* %3, i64* %197)
  %199 = load i64*, i64** @a3, align 8
  %200 = call i32 @memset(i64* %199, i32 0, i32 8)
  %201 = load i32, i32* @key, align 4
  %202 = call i32 @crypto_auth_hmacsha256_init(i32* %3, i32 %201, i32 4)
  %203 = load i64*, i64** @a2, align 8
  %204 = call i32 @crypto_auth_hmacsha256_update(i32* %3, i64* %203, i32 0)
  %205 = load i64*, i64** @a3, align 8
  %206 = call i32 @crypto_auth_hmacsha256_final(i32* %3, i64* %205)
  %207 = load i64*, i64** @a2, align 8
  %208 = load i64*, i64** @a3, align 8
  %209 = call i64 @sodium_memcmp(i64* %207, i64* %208, i32 8)
  %210 = icmp eq i64 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = load i64*, i64** @a3, align 8
  %214 = call i32 @memset(i64* %213, i32 0, i32 8)
  %215 = load i32, i32* @key, align 4
  %216 = call i32 @crypto_auth_hmacsha256_init(i32* %3, i32 %215, i32 4)
  %217 = load i64*, i64** @guard_page, align 8
  %218 = call i32 @crypto_auth_hmacsha256_update(i32* %3, i64* %217, i32 0)
  %219 = load i64*, i64** @a3, align 8
  %220 = call i32 @crypto_auth_hmacsha256_final(i32* %3, i64* %219)
  %221 = load i64*, i64** @a2, align 8
  %222 = load i64*, i64** @a3, align 8
  %223 = call i64 @sodium_memcmp(i64* %221, i64* %222, i32 8)
  %224 = icmp eq i64 %223, 0
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert(i32 %225)
  %227 = call i32 (...) @crypto_auth_bytes()
  %228 = icmp ugt i32 %227, 0
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  %231 = call i32 (...) @crypto_auth_keybytes()
  %232 = icmp ugt i32 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = call i32 (...) @crypto_auth_primitive()
  %236 = call i64 @strcmp(i32 %235, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %237 = icmp eq i64 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = call i32 (...) @crypto_auth_hmacsha256_bytes()
  %241 = icmp ugt i32 %240, 0
  %242 = zext i1 %241 to i32
  %243 = call i32 @assert(i32 %242)
  %244 = call i32 (...) @crypto_auth_hmacsha256_keybytes()
  %245 = icmp ugt i32 %244, 0
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  %248 = call i32 (...) @crypto_auth_hmacsha512_bytes()
  %249 = icmp ugt i32 %248, 0
  %250 = zext i1 %249 to i32
  %251 = call i32 @assert(i32 %250)
  %252 = call i32 (...) @crypto_auth_hmacsha512_keybytes()
  %253 = icmp ugt i32 %252, 0
  %254 = zext i1 %253 to i32
  %255 = call i32 @assert(i32 %254)
  %256 = call i32 (...) @crypto_auth_hmacsha512256_bytes()
  %257 = call i32 (...) @crypto_auth_bytes()
  %258 = icmp eq i32 %256, %257
  %259 = zext i1 %258 to i32
  %260 = call i32 @assert(i32 %259)
  %261 = call i32 (...) @crypto_auth_hmacsha512256_keybytes()
  %262 = call i32 (...) @crypto_auth_keybytes()
  %263 = icmp eq i32 %261, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 @assert(i32 %264)
  %266 = call i32 (...) @crypto_auth_hmacsha512256_statebytes()
  %267 = call i32 (...) @crypto_auth_hmacsha512256_keybytes()
  %268 = icmp uge i32 %266, %267
  %269 = zext i1 %268 to i32
  %270 = call i32 @assert(i32 %269)
  %271 = call i32 (...) @crypto_auth_hmacsha256_statebytes()
  %272 = sext i32 %271 to i64
  %273 = icmp eq i64 %272, 4
  %274 = zext i1 %273 to i32
  %275 = call i32 @assert(i32 %274)
  %276 = call i32 (...) @crypto_auth_hmacsha512_statebytes()
  %277 = sext i32 %276 to i64
  %278 = icmp eq i64 %277, 4
  %279 = zext i1 %278 to i32
  %280 = call i32 @assert(i32 %279)
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @crypto_auth_hmacsha512_statebytes(...) #1

declare dso_local i32 @crypto_auth(i64*, i64*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @crypto_auth_hmacsha512_init(i32*, i32, i32) #1

declare dso_local i32 @crypto_auth_hmacsha512_update(i32*, i64*, i32) #1

declare dso_local i32 @crypto_auth_hmacsha512_final(i32*, i64*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @crypto_auth_hmacsha256_init(i32*, i32, i32) #1

declare dso_local i32 @crypto_auth_hmacsha256_update(i32*, i64*, i32) #1

declare dso_local i32 @crypto_auth_hmacsha256_final(i32*, i64*) #1

declare dso_local i64 @sodium_memcmp(i64*, i64*, i32) #1

declare dso_local i32 @crypto_auth_hmacsha512256_init(i32*, i32, i32) #1

declare dso_local i32 @crypto_auth_hmacsha512256_final(i32*, i64*) #1

declare dso_local i32 @crypto_auth_hmacsha512256_update(i32*, i64*, i32) #1

declare dso_local i32 @crypto_auth_bytes(...) #1

declare dso_local i32 @crypto_auth_keybytes(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @crypto_auth_primitive(...) #1

declare dso_local i32 @crypto_auth_hmacsha256_bytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha256_keybytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha512_bytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha512_keybytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha512256_bytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha512256_keybytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha512256_statebytes(...) #1

declare dso_local i32 @crypto_auth_hmacsha256_statebytes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
