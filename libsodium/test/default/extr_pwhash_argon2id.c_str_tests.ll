; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_pwhash_argon2id.c_str_tests.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_pwhash_argon2id.c_str_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"Correct Horse Battery Staple\00", align 1
@crypto_pwhash_argon2id_SALTBYTES = common dso_local global i32 0, align 4
@crypto_pwhash_argon2id_STRBYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c">A 16-bytes salt\00", align 1
@OPSLIMIT = common dso_local global i32 0, align 4
@MEMLIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"pwhash_str failure\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"pwhash_str(2) failure\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"pwhash_str() doesn't generate different salts\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"needs_rehash() false positive\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"needs_rehash() false negative (0)\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"needs_rehash() false negative (1)\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"needs_rehash() false negative (2)\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"pwhash_str_needs_rehash() didn't handle argon2id\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"needs_rehash() didn't fail with an invalid hash string\0A\00", align 1
@crypto_pwhash_STRBYTES = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [55 x i8] c"pwhash_argon2id_str() doesn't properly pad with zeros\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"pwhash_argon2id_str_verify(1) failure\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"pwhash_str_verify(1') failure\0A\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"pwhash_argon2id_str_verify(2) failure\0A\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"pwhash_str() with a large password should have failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"pwhash_str() with a small opslimit should not have failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"pwhash_argon2id_str() with a null opslimit should have failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [81 x i8] c"$argon2id$m=65536,t=2,p=1c29tZXNhbHQ$9sTbSlTio3Biev89thdrlKKiCaYsjjYVJxGAL3swxpQ\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(0)) failure\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"pwhash_str_verify(invalid(1)) failure %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [81 x i8] c"$argon2id$m=65536,t=2,p=1$c29tZXNhbHQ9sTbSlTio3Biev89thdrlKKiCaYsjjYVJxGAL3swxpQ\00", align 1
@.str.23 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(2)) failure\0A\00", align 1
@.str.24 = private unnamed_addr constant [82 x i8] c"$argon2id$m=65536,t=2,p=1$c29tZXNhbHQ$b2G3seW+uPzerwQQC+/E1K50CLLO7YXy0JRcaTuswRo\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(3)) failure\0A\00", align 1
@.str.26 = private unnamed_addr constant [86 x i8] c"$argon2id$v=19$m=65536,t=2,p=1c29tZXNhbHQ$wWKIMhR9lyDFvRz9YTZweHKfbftvj+qf+YFY4NeBbtA\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(4)) failure\0A\00", align 1
@.str.28 = private unnamed_addr constant [86 x i8] c"$argon2id$v=19$m=65536,t=2,p=1$c29tZXNhbHQwWKIMhR9lyDFvRz9YTZweHKfbftvj+qf+YFY4NeBbtA\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(5)) failure\0A\00", align 1
@.str.30 = private unnamed_addr constant [87 x i8] c"$argon2id$v=19$m=65536,t=2,p=1$c29tZXNhbHQ$8iIuixkI73Js3G1uMbezQXD0b8LG4SXGsOwoQkdAQIM\00", align 1
@.str.31 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(6)) failure\0A\00", align 1
@.str.32 = private unnamed_addr constant [85 x i8] c"$argon2id$v=19$m=256,t=3,p=1$MDEyMzQ1Njc$G5ajKFCoUzaXRLdz7UJb5wGkb2Xt+X5/GQjUYtS2+TE\00", align 1
@.str.33 = private unnamed_addr constant [37 x i8] c"pwhash_str_verify(valid(7)) failure\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"passwore\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(7)) failure\0A\00", align 1
@.str.36 = private unnamed_addr constant [85 x i8] c"$Argon2id$v=19$m=256,t=3,p=1$MDEyMzQ1Njc$G5ajKFCoUzaXRLdz7UJb5wGkb2Xt+X5/GQjUYtS2+TE\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(8)) failure\0A\00", align 1
@.str.38 = private unnamed_addr constant [85 x i8] c"$argon2id$v=19$m=256,t=3,p=2$MDEyMzQ1Njc$G5ajKFCoUzaXRLdz7UJb5wGkb2Xt+X5/GQjUYtS2+TE\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"pwhash_str_verify(invalid(9)) failure\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@crypto_pwhash_ALG_ARGON2ID13 = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@crypto_pwhash_ALG_ARGON2I13 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @str_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @str_tests() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %5 = load i32, i32* @crypto_pwhash_argon2id_SALTBYTES, align 4
  %6 = call i64 @sodium_malloc(i32 %5)
  %7 = inttoptr i64 %6 to i8*
  store i8* %7, i8** %3, align 8
  %8 = load i32, i32* @crypto_pwhash_argon2id_STRBYTES, align 4
  %9 = call i64 @sodium_malloc(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %1, align 8
  %11 = load i32, i32* @crypto_pwhash_argon2id_STRBYTES, align 4
  %12 = call i64 @sodium_malloc(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %2, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* @crypto_pwhash_argon2id_SALTBYTES, align 4
  %16 = call i32 @memcpy(i8* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i8*, i8** %1, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = load i32, i32* @OPSLIMIT, align 4
  %22 = load i32, i32* @MEMLIMIT, align 4
  %23 = call i32 @crypto_pwhash_str(i8* %17, i8* %18, i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %0
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %0
  %28 = load i8*, i8** %2, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @strlen(i8* %30)
  %32 = load i32, i32* @OPSLIMIT, align 4
  %33 = load i32, i32* @MEMLIMIT, align 4
  %34 = call i32 @crypto_pwhash_str(i8* %28, i8* %29, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %27
  %39 = load i8*, i8** %1, align 8
  %40 = load i8*, i8** %2, align 8
  %41 = call i64 @strcmp(i8* %39, i8* %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i8*, i8** %1, align 8
  %47 = load i32, i32* @OPSLIMIT, align 4
  %48 = load i32, i32* @MEMLIMIT, align 4
  %49 = call i32 @crypto_pwhash_str_needs_rehash(i8* %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i8*, i8** %1, align 8
  %53 = load i32, i32* @OPSLIMIT, align 4
  %54 = load i32, i32* @MEMLIMIT, align 4
  %55 = call i32 @crypto_pwhash_str_needs_rehash(i8* %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51, %45
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i8*, i8** %1, align 8
  %61 = load i32, i32* @OPSLIMIT, align 4
  %62 = load i32, i32* @MEMLIMIT, align 4
  %63 = sdiv i32 %62, 2
  %64 = call i32 @crypto_pwhash_str_needs_rehash(i8* %60, i32 %61, i32 %63)
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %87, label %66

66:                                               ; preds = %59
  %67 = load i8*, i8** %1, align 8
  %68 = load i32, i32* @OPSLIMIT, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* @MEMLIMIT, align 4
  %71 = call i32 @crypto_pwhash_str_needs_rehash(i8* %67, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %87, label %73

73:                                               ; preds = %66
  %74 = load i8*, i8** %1, align 8
  %75 = load i32, i32* @OPSLIMIT, align 4
  %76 = load i32, i32* @MEMLIMIT, align 4
  %77 = mul nsw i32 %76, 2
  %78 = call i32 @crypto_pwhash_str_needs_rehash(i8* %74, i32 %75, i32 %77)
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load i8*, i8** %1, align 8
  %82 = load i32, i32* @OPSLIMIT, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32, i32* @MEMLIMIT, align 4
  %85 = call i32 @crypto_pwhash_str_needs_rehash(i8* %81, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %80, %73, %66, %59
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %80
  %90 = load i8*, i8** %1, align 8
  %91 = load i32, i32* @OPSLIMIT, align 4
  %92 = load i32, i32* @MEMLIMIT, align 4
  %93 = sdiv i32 %92, 2
  %94 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %90, i32 %91, i32 %93)
  %95 = icmp ne i32 %94, 1
  br i1 %95, label %117, label %96

96:                                               ; preds = %89
  %97 = load i8*, i8** %1, align 8
  %98 = load i32, i32* @OPSLIMIT, align 4
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* @MEMLIMIT, align 4
  %101 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %97, i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 1
  br i1 %102, label %117, label %103

103:                                              ; preds = %96
  %104 = load i8*, i8** %1, align 8
  %105 = load i32, i32* @OPSLIMIT, align 4
  %106 = load i32, i32* @MEMLIMIT, align 4
  %107 = mul nsw i32 %106, 2
  %108 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %104, i32 %105, i32 %107)
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load i8*, i8** %1, align 8
  %112 = load i32, i32* @OPSLIMIT, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* @MEMLIMIT, align 4
  %115 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %111, i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 1
  br i1 %116, label %117, label %119

117:                                              ; preds = %110, %103, %96, %89
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %110
  %120 = load i8*, i8** %1, align 8
  %121 = load i32, i32* @OPSLIMIT, align 4
  %122 = load i32, i32* @MEMLIMIT, align 4
  %123 = sdiv i32 %122, 2
  %124 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %120, i32 %121, i32 %123)
  %125 = icmp ne i32 %124, -1
  br i1 %125, label %147, label %126

126:                                              ; preds = %119
  %127 = load i8*, i8** %1, align 8
  %128 = load i32, i32* @OPSLIMIT, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* @MEMLIMIT, align 4
  %131 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %127, i32 %129, i32 %130)
  %132 = icmp ne i32 %131, -1
  br i1 %132, label %147, label %133

133:                                              ; preds = %126
  %134 = load i8*, i8** %1, align 8
  %135 = load i32, i32* @OPSLIMIT, align 4
  %136 = load i32, i32* @MEMLIMIT, align 4
  %137 = mul nsw i32 %136, 2
  %138 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %134, i32 %135, i32 %137)
  %139 = icmp ne i32 %138, -1
  br i1 %139, label %147, label %140

140:                                              ; preds = %133
  %141 = load i8*, i8** %1, align 8
  %142 = load i32, i32* @OPSLIMIT, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i32, i32* @MEMLIMIT, align 4
  %145 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %141, i32 %143, i32 %144)
  %146 = icmp ne i32 %145, -1
  br i1 %146, label %147, label %149

147:                                              ; preds = %140, %133, %126, %119
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %140
  %150 = load i8*, i8** %1, align 8
  %151 = load i32, i32* @OPSLIMIT, align 4
  %152 = load i32, i32* @MEMLIMIT, align 4
  %153 = sdiv i32 %152, 2
  %154 = call i32 @crypto_pwhash_str_needs_rehash(i8* %150, i32 %151, i32 %153)
  %155 = icmp ne i32 %154, 1
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %149
  %159 = load i8*, i8** %1, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i32, i32* @OPSLIMIT, align 4
  %162 = load i32, i32* @MEMLIMIT, align 4
  %163 = call i32 @crypto_pwhash_str_needs_rehash(i8* %160, i32 %161, i32 %162)
  %164 = icmp ne i32 %163, -1
  br i1 %164, label %172, label %165

165:                                              ; preds = %158
  %166 = load i8*, i8** %1, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = load i32, i32* @OPSLIMIT, align 4
  %169 = load i32, i32* @MEMLIMIT, align 4
  %170 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %167, i32 %168, i32 %169)
  %171 = icmp ne i32 %170, -1
  br i1 %171, label %172, label %174

172:                                              ; preds = %165, %158
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %165
  %175 = load i8*, i8** %1, align 8
  %176 = load i8*, i8** %1, align 8
  %177 = call i32 @strlen(i8* %176)
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %175, i64 %178
  %180 = load i64, i64* @crypto_pwhash_STRBYTES, align 8
  %181 = load i8*, i8** %1, align 8
  %182 = call i32 @strlen(i8* %181)
  %183 = sext i32 %182 to i64
  %184 = sub nsw i64 %180, %183
  %185 = call i32 @sodium_is_zero(i8* %179, i64 %184)
  %186 = icmp ne i32 %185, 1
  br i1 %186, label %200, label %187

187:                                              ; preds = %174
  %188 = load i8*, i8** %2, align 8
  %189 = load i8*, i8** %2, align 8
  %190 = call i32 @strlen(i8* %189)
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = load i64, i64* @crypto_pwhash_STRBYTES, align 8
  %194 = load i8*, i8** %2, align 8
  %195 = call i32 @strlen(i8* %194)
  %196 = sext i32 %195 to i64
  %197 = sub nsw i64 %193, %196
  %198 = call i32 @sodium_is_zero(i8* %192, i64 %197)
  %199 = icmp ne i32 %198, 1
  br i1 %199, label %200, label %202

200:                                              ; preds = %187, %174
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %187
  %203 = load i8*, i8** %1, align 8
  %204 = load i8*, i8** %4, align 8
  %205 = load i8*, i8** %4, align 8
  %206 = call i32 @strlen(i8* %205)
  %207 = call i64 @crypto_pwhash_argon2id_str_verify(i8* %203, i8* %204, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %202
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %202
  %212 = load i8*, i8** %1, align 8
  %213 = load i8*, i8** %4, align 8
  %214 = load i8*, i8** %4, align 8
  %215 = call i32 @strlen(i8* %214)
  %216 = call i32 @crypto_pwhash_str_verify(i8* %212, i8* %213, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %211
  %221 = load i8*, i8** %1, align 8
  %222 = getelementptr inbounds i8, i8* %221, i64 14
  %223 = load i8, i8* %222, align 1
  %224 = add i8 %223, 1
  store i8 %224, i8* %222, align 1
  %225 = load i8*, i8** %1, align 8
  %226 = load i8*, i8** %4, align 8
  %227 = load i8*, i8** %4, align 8
  %228 = call i32 @strlen(i8* %227)
  %229 = call i32 @crypto_pwhash_str_verify(i8* %225, i8* %226, i32 %228)
  %230 = icmp ne i32 %229, -1
  br i1 %230, label %231, label %233

231:                                              ; preds = %220
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %220
  %234 = load i8*, i8** %1, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 14
  %236 = load i8, i8* %235, align 1
  %237 = add i8 %236, -1
  store i8 %237, i8* %235, align 1
  %238 = load i8*, i8** %1, align 8
  %239 = load i32, i32* @crypto_pwhash_argon2id_STRBYTES, align 4
  %240 = sub i32 %239, 1
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 0
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  %248 = load i8*, i8** %2, align 8
  %249 = load i8*, i8** %4, align 8
  %250 = load i32, i32* @OPSLIMIT, align 4
  %251 = load i32, i32* @MEMLIMIT, align 4
  %252 = call i32 @crypto_pwhash_str(i8* %248, i8* %249, i32 0, i32 %250, i32 %251)
  %253 = icmp ne i32 %252, -1
  br i1 %253, label %254, label %256

254:                                              ; preds = %233
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.15, i64 0, i64 0))
  br label %256

256:                                              ; preds = %254, %233
  %257 = load i8*, i8** %2, align 8
  %258 = load i8*, i8** %4, align 8
  %259 = load i8*, i8** %4, align 8
  %260 = call i32 @strlen(i8* %259)
  %261 = load i32, i32* @MEMLIMIT, align 4
  %262 = call i32 @crypto_pwhash_str(i8* %257, i8* %258, i32 %260, i32 1, i32 %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %256
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %256
  %267 = load i8*, i8** %2, align 8
  %268 = load i8*, i8** %4, align 8
  %269 = load i8*, i8** %4, align 8
  %270 = call i32 @strlen(i8* %269)
  %271 = load i32, i32* @MEMLIMIT, align 4
  %272 = call i32 @crypto_pwhash_str(i8* %267, i8* %268, i32 %270, i32 0, i32 %271)
  %273 = icmp ne i32 %272, -1
  br i1 %273, label %274, label %276

274:                                              ; preds = %266
  %275 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i64 0, i64 0))
  br label %276

276:                                              ; preds = %274, %266
  %277 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 0)
  %278 = icmp ne i32 %277, -1
  br i1 %278, label %279, label %281

279:                                              ; preds = %276
  %280 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0))
  br label %281

281:                                              ; preds = %279, %276
  %282 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %283 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %282)
  %284 = icmp ne i32 %283, -1
  br i1 %284, label %285, label %288

285:                                              ; preds = %281
  %286 = load i32, i32* @errno, align 4
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), i32 %286)
  br label %288

288:                                              ; preds = %285, %281
  %289 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %290 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %289)
  %291 = icmp ne i32 %290, -1
  br i1 %291, label %292, label %294

292:                                              ; preds = %288
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.23, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %288
  %295 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %296 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %295)
  %297 = icmp ne i32 %296, -1
  br i1 %297, label %298, label %300

298:                                              ; preds = %294
  %299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0))
  br label %300

300:                                              ; preds = %298, %294
  %301 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %302 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %301)
  %303 = icmp ne i32 %302, -1
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.27, i64 0, i64 0))
  br label %306

306:                                              ; preds = %304, %300
  %307 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %308 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %307)
  %309 = icmp ne i32 %308, -1
  br i1 %309, label %310, label %312

310:                                              ; preds = %306
  %311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0))
  br label %312

312:                                              ; preds = %310, %306
  %313 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %314 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %313)
  %315 = icmp ne i32 %314, -1
  br i1 %315, label %316, label %318

316:                                              ; preds = %312
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.31, i64 0, i64 0))
  br label %318

318:                                              ; preds = %316, %312
  %319 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %320 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %318
  %323 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.33, i64 0, i64 0))
  br label %324

324:                                              ; preds = %322, %318
  %325 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0))
  %326 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i64 0, i64 0), i32 %325)
  %327 = icmp ne i32 %326, -1
  br i1 %327, label %332, label %328

328:                                              ; preds = %324
  %329 = load i32, i32* @errno, align 4
  %330 = load i32, i32* @EINVAL, align 4
  %331 = icmp ne i32 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %328, %324
  %333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0))
  br label %334

334:                                              ; preds = %332, %328
  %335 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %336 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.36, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %335)
  %337 = icmp ne i32 %336, -1
  br i1 %337, label %342, label %338

338:                                              ; preds = %334
  %339 = load i32, i32* @errno, align 4
  %340 = load i32, i32* @EINVAL, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %338, %334
  %343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0))
  br label %344

344:                                              ; preds = %342, %338
  %345 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0))
  %346 = call i32 @crypto_pwhash_str_verify(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %345)
  %347 = icmp ne i32 %346, -1
  br i1 %347, label %352, label %348

348:                                              ; preds = %344
  %349 = load i32, i32* @errno, align 4
  %350 = load i32, i32* @EINVAL, align 4
  %351 = icmp ne i32 %349, %350
  br i1 %351, label %352, label %354

352:                                              ; preds = %348, %344
  %353 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0))
  br label %354

354:                                              ; preds = %352, %348
  %355 = load i8*, i8** %1, align 8
  %356 = load i32, i32* @OPSLIMIT, align 4
  %357 = load i32, i32* @MEMLIMIT, align 4
  %358 = load i32, i32* @crypto_pwhash_ALG_ARGON2ID13, align 4
  %359 = call i64 @crypto_pwhash_str_alg(i8* %355, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 4, i32 %356, i32 %357, i32 %358)
  %360 = icmp eq i64 %359, 0
  %361 = zext i1 %360 to i32
  %362 = call i32 @assert(i32 %361)
  %363 = load i8*, i8** %1, align 8
  %364 = call i64 @crypto_pwhash_argon2id_str_verify(i8* %363, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 4)
  %365 = icmp eq i64 %364, 0
  %366 = zext i1 %365 to i32
  %367 = call i32 @assert(i32 %366)
  %368 = load i8*, i8** %1, align 8
  %369 = load i32, i32* @OPSLIMIT, align 4
  %370 = load i32, i32* @MEMLIMIT, align 4
  %371 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %368, i32 %369, i32 %370)
  %372 = icmp eq i32 %371, 0
  %373 = zext i1 %372 to i32
  %374 = call i32 @assert(i32 %373)
  %375 = load i8*, i8** %1, align 8
  %376 = load i32, i32* @OPSLIMIT, align 4
  %377 = sdiv i32 %376, 2
  %378 = load i32, i32* @MEMLIMIT, align 4
  %379 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %375, i32 %377, i32 %378)
  %380 = icmp eq i32 %379, 1
  %381 = zext i1 %380 to i32
  %382 = call i32 @assert(i32 %381)
  %383 = load i8*, i8** %1, align 8
  %384 = load i32, i32* @OPSLIMIT, align 4
  %385 = load i32, i32* @MEMLIMIT, align 4
  %386 = sdiv i32 %385, 2
  %387 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %383, i32 %384, i32 %386)
  %388 = icmp eq i32 %387, 1
  %389 = zext i1 %388 to i32
  %390 = call i32 @assert(i32 %389)
  %391 = load i8*, i8** %1, align 8
  %392 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %391, i32 0, i32 0)
  %393 = icmp eq i32 %392, 1
  %394 = zext i1 %393 to i32
  %395 = call i32 @assert(i32 %394)
  %396 = load i8*, i8** %1, align 8
  %397 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %396, i32 0, i32 0)
  %398 = icmp eq i32 %397, -1
  %399 = zext i1 %398 to i32
  %400 = call i32 @assert(i32 %399)
  %401 = load i8*, i8** %1, align 8
  %402 = getelementptr inbounds i8, i8* %401, i64 1
  %403 = load i32, i32* @OPSLIMIT, align 4
  %404 = load i32, i32* @MEMLIMIT, align 4
  %405 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %402, i32 %403, i32 %404)
  %406 = icmp eq i32 %405, -1
  %407 = zext i1 %406 to i32
  %408 = call i32 @assert(i32 %407)
  %409 = load i8*, i8** %1, align 8
  %410 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %409, i32 0, i32 0)
  %411 = icmp eq i32 %410, -1
  %412 = zext i1 %411 to i32
  %413 = call i32 @assert(i32 %412)
  %414 = load i32, i32* @OPSLIMIT, align 4
  %415 = load i32, i32* @MEMLIMIT, align 4
  %416 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i64 0, i64 0), i32 %414, i32 %415)
  %417 = icmp eq i32 %416, -1
  %418 = zext i1 %417 to i32
  %419 = call i32 @assert(i32 %418)
  %420 = load i8*, i8** %1, align 8
  %421 = load i32, i32* @OPSLIMIT, align 4
  %422 = load i32, i32* @MEMLIMIT, align 4
  %423 = load i32, i32* @crypto_pwhash_ALG_ARGON2I13, align 4
  %424 = call i64 @crypto_pwhash_str_alg(i8* %420, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 4, i32 %421, i32 %422, i32 %423)
  %425 = icmp eq i64 %424, 0
  %426 = zext i1 %425 to i32
  %427 = call i32 @assert(i32 %426)
  %428 = load i8*, i8** %1, align 8
  %429 = call i64 @crypto_pwhash_argon2i_str_verify(i8* %428, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 4)
  %430 = icmp eq i64 %429, 0
  %431 = zext i1 %430 to i32
  %432 = call i32 @assert(i32 %431)
  %433 = load i8*, i8** %1, align 8
  %434 = load i32, i32* @OPSLIMIT, align 4
  %435 = load i32, i32* @MEMLIMIT, align 4
  %436 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %433, i32 %434, i32 %435)
  %437 = icmp eq i32 %436, 0
  %438 = zext i1 %437 to i32
  %439 = call i32 @assert(i32 %438)
  %440 = load i8*, i8** %1, align 8
  %441 = load i32, i32* @OPSLIMIT, align 4
  %442 = sdiv i32 %441, 2
  %443 = load i32, i32* @MEMLIMIT, align 4
  %444 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %440, i32 %442, i32 %443)
  %445 = icmp eq i32 %444, 1
  %446 = zext i1 %445 to i32
  %447 = call i32 @assert(i32 %446)
  %448 = load i8*, i8** %1, align 8
  %449 = load i32, i32* @OPSLIMIT, align 4
  %450 = load i32, i32* @MEMLIMIT, align 4
  %451 = sdiv i32 %450, 2
  %452 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %448, i32 %449, i32 %451)
  %453 = icmp eq i32 %452, 1
  %454 = zext i1 %453 to i32
  %455 = call i32 @assert(i32 %454)
  %456 = load i8*, i8** %1, align 8
  %457 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %456, i32 0, i32 0)
  %458 = icmp eq i32 %457, 1
  %459 = zext i1 %458 to i32
  %460 = call i32 @assert(i32 %459)
  %461 = load i8*, i8** %1, align 8
  %462 = call i32 @crypto_pwhash_argon2id_str_needs_rehash(i8* %461, i32 0, i32 0)
  %463 = icmp eq i32 %462, -1
  %464 = zext i1 %463 to i32
  %465 = call i32 @assert(i32 %464)
  %466 = load i32, i32* @OPSLIMIT, align 4
  %467 = load i32, i32* @MEMLIMIT, align 4
  %468 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.41, i64 0, i64 0), i32 %466, i32 %467)
  %469 = icmp eq i32 %468, -1
  %470 = zext i1 %469 to i32
  %471 = call i32 @assert(i32 %470)
  %472 = load i8*, i8** %1, align 8
  %473 = getelementptr inbounds i8, i8* %472, i64 1
  %474 = load i32, i32* @OPSLIMIT, align 4
  %475 = load i32, i32* @MEMLIMIT, align 4
  %476 = call i32 @crypto_pwhash_argon2i_str_needs_rehash(i8* %473, i32 %474, i32 %475)
  %477 = icmp eq i32 %476, -1
  %478 = zext i1 %477 to i32
  %479 = call i32 @assert(i32 %478)
  %480 = load i8*, i8** %3, align 8
  %481 = call i32 @sodium_free(i8* %480)
  %482 = load i8*, i8** %1, align 8
  %483 = call i32 @sodium_free(i8* %482)
  %484 = load i8*, i8** %2, align 8
  %485 = call i32 @sodium_free(i8* %484)
  ret void
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crypto_pwhash_str(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @crypto_pwhash_str_needs_rehash(i8*, i32, i32) #1

declare dso_local i32 @crypto_pwhash_argon2id_str_needs_rehash(i8*, i32, i32) #1

declare dso_local i32 @crypto_pwhash_argon2i_str_needs_rehash(i8*, i32, i32) #1

declare dso_local i32 @sodium_is_zero(i8*, i64) #1

declare dso_local i64 @crypto_pwhash_argon2id_str_verify(i8*, i8*, i32) #1

declare dso_local i32 @crypto_pwhash_str_verify(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_pwhash_str_alg(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @crypto_pwhash_argon2i_str_verify(i8*, i8*, i32) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
