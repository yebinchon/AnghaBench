; ModuleID = '/home/carl/AnghaBench/libsodium/test/default/extr_secretbox_easy.c_xmain.c'
source_filename = "/home/carl/AnghaBench/libsodium/test/default/extr_secretbox_easy.c_xmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_secretbox_MACBYTES = common dso_local global i32 0, align 4
@m = common dso_local global i8* null, align 8
@nonce = common dso_local global i32 0, align 4
@firstkey = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c",0x%02x\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Null crypto_secretbox_open_easy() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"Null tampered crypto_secretbox_open_easy() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %6 = add nsw i32 131, %5
  %7 = add nsw i32 %6, 1
  %8 = call i64 @sodium_malloc(i32 %7)
  %9 = inttoptr i64 %8 to i8*
  store i8* %9, i8** %2, align 8
  %10 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %11 = call i64 @sodium_malloc(i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ne i8* %16, null
  br label %18

18:                                               ; preds = %15, %0
  %19 = phi i1 [ false, %0 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %2, align 8
  %23 = load i8*, i8** @m, align 8
  %24 = load i32, i32* @nonce, align 4
  %25 = load i32, i32* @firstkey, align 4
  %26 = call i64 @crypto_secretbox_easy(i8* %22, i8* %23, i32 131, i32 %24, i32 %25)
  store i64 0, i64* %4, align 8
  br label %27

27:                                               ; preds = %40, %18
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %30 = add nsw i32 131, %29
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load i8*, i8** %2, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %4, align 8
  br label %27

43:                                               ; preds = %27
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i8*, i8** %2, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = load i8*, i8** @m, align 8
  %48 = load i32, i32* @nonce, align 4
  %49 = load i32, i32* @firstkey, align 4
  %50 = call i32 @crypto_secretbox_detached(i8* %45, i8* %46, i8* %47, i32 131, i32 %48, i32 %49)
  store i64 0, i64* %4, align 8
  br label %51

51:                                               ; preds = %63, %43
  %52 = load i64, i64* %4, align 8
  %53 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56
  %64 = load i64, i64* %4, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %4, align 8
  br label %51

66:                                               ; preds = %51
  store i64 0, i64* %4, align 8
  br label %67

67:                                               ; preds = %77, %66
  %68 = load i64, i64* %4, align 8
  %69 = icmp ult i64 %68, 131
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i8*, i8** %2, align 8
  %72 = load i64, i64* %4, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %70
  %78 = load i64, i64* %4, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %4, align 8
  br label %67

80:                                               ; preds = %67
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i8*, i8** %2, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8*, i8** @m, align 8
  %85 = call i32 @memcpy(i8* %83, i8* %84, i32 131)
  %86 = load i8*, i8** %2, align 8
  %87 = load i8*, i8** %2, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i32, i32* @nonce, align 4
  %90 = load i32, i32* @firstkey, align 4
  %91 = call i64 @crypto_secretbox_easy(i8* %86, i8* %88, i32 131, i32 %89, i32 %90)
  store i64 0, i64* %4, align 8
  br label %92

92:                                               ; preds = %105, %80
  %93 = load i64, i64* %4, align 8
  %94 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %95 = add nsw i32 131, %94
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %93, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %92
  %99 = load i8*, i8** %2, align 8
  %100 = load i64, i64* %4, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %98
  %106 = load i64, i64* %4, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %4, align 8
  br label %92

108:                                              ; preds = %92
  %109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i8*, i8** %2, align 8
  %111 = load i8*, i8** @m, align 8
  %112 = call i32 @memcpy(i8* %110, i8* %111, i32 131)
  %113 = load i8*, i8** %2, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8*, i8** %2, align 8
  %116 = load i32, i32* @nonce, align 4
  %117 = load i32, i32* @firstkey, align 4
  %118 = call i64 @crypto_secretbox_easy(i8* %114, i8* %115, i32 131, i32 %116, i32 %117)
  store i64 0, i64* %4, align 8
  br label %119

119:                                              ; preds = %133, %108
  %120 = load i64, i64* %4, align 8
  %121 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %122 = add nsw i32 131, %121
  %123 = sext i32 %122 to i64
  %124 = icmp ult i64 %120, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %119
  %126 = load i8*, i8** %2, align 8
  %127 = load i64, i64* %4, align 8
  %128 = add i64 %127, 1
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %125
  %134 = load i64, i64* %4, align 8
  %135 = add i64 %134, 1
  store i64 %135, i64* %4, align 8
  br label %119

136:                                              ; preds = %119
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %138 = load i8*, i8** %2, align 8
  %139 = load i8*, i8** @m, align 8
  %140 = call i32 @memcpy(i8* %138, i8* %139, i32 131)
  %141 = load i8*, i8** %2, align 8
  %142 = load i8*, i8** %2, align 8
  %143 = load i32, i32* @nonce, align 4
  %144 = load i32, i32* @firstkey, align 4
  %145 = call i64 @crypto_secretbox_easy(i8* %141, i8* %142, i32 131, i32 %143, i32 %144)
  store i64 0, i64* %4, align 8
  br label %146

146:                                              ; preds = %159, %136
  %147 = load i64, i64* %4, align 8
  %148 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %149 = add nsw i32 131, %148
  %150 = sext i32 %149 to i64
  %151 = icmp ult i64 %147, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %146
  %153 = load i8*, i8** %2, align 8
  %154 = load i64, i64* %4, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %152
  %160 = load i64, i64* %4, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %4, align 8
  br label %146

162:                                              ; preds = %146
  %163 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %164 = load i8*, i8** %2, align 8
  %165 = load i8*, i8** @m, align 8
  %166 = load i32, i32* @nonce, align 4
  %167 = load i32, i32* @firstkey, align 4
  %168 = call i64 @crypto_secretbox_easy(i8* %164, i8* %165, i32 0, i32 %166, i32 %167)
  %169 = icmp eq i64 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i8*, i8** %2, align 8
  %173 = load i8*, i8** %2, align 8
  %174 = load i32, i32* @nonce, align 4
  %175 = load i32, i32* @firstkey, align 4
  %176 = call i64 @crypto_secretbox_easy(i8* %172, i8* %173, i32 0, i32 %174, i32 %175)
  store i64 0, i64* %4, align 8
  br label %177

177:                                              ; preds = %190, %162
  %178 = load i64, i64* %4, align 8
  %179 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = icmp ult i64 %178, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %177
  %184 = load i8*, i8** %2, align 8
  %185 = load i64, i64* %4, align 8
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %183
  %191 = load i64, i64* %4, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %4, align 8
  br label %177

193:                                              ; preds = %177
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %195 = load i8*, i8** %2, align 8
  %196 = load i8*, i8** %2, align 8
  %197 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %198 = load i32, i32* @nonce, align 4
  %199 = load i32, i32* @firstkey, align 4
  %200 = call i32 @crypto_secretbox_open_easy(i8* %195, i8* %196, i32 %197, i32 %198, i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %193
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202, %193
  store i64 0, i64* %4, align 8
  br label %205

205:                                              ; preds = %218, %204
  %206 = load i64, i64* %4, align 8
  %207 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = icmp ult i64 %206, %209
  br i1 %210, label %211, label %221

211:                                              ; preds = %205
  %212 = load i8*, i8** %2, align 8
  %213 = load i64, i64* %4, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %211
  %219 = load i64, i64* %4, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %4, align 8
  br label %205

221:                                              ; preds = %205
  %222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %223 = load i8*, i8** %2, align 8
  %224 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %225 = call i64 @randombytes_uniform(i32 %224)
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = add i8 %227, 1
  store i8 %228, i8* %226, align 1
  %229 = load i8*, i8** %2, align 8
  %230 = load i8*, i8** %2, align 8
  %231 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %232 = load i32, i32* @nonce, align 4
  %233 = load i32, i32* @firstkey, align 4
  %234 = call i32 @crypto_secretbox_open_easy(i8* %229, i8* %230, i32 %231, i32 %232, i32 %233)
  %235 = icmp ne i32 %234, -1
  br i1 %235, label %236, label %238

236:                                              ; preds = %221
  %237 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  br label %238

238:                                              ; preds = %236, %221
  %239 = load i8*, i8** %2, align 8
  %240 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %241 = add nsw i32 131, %240
  %242 = add nsw i32 %241, 1
  %243 = call i32 @memset(i8* %239, i32 0, i32 %242)
  %244 = load i8*, i8** %2, align 8
  %245 = load i8*, i8** @m, align 8
  %246 = call i32 @memcpy(i8* %244, i8* %245, i32 20)
  %247 = load i8*, i8** %2, align 8
  %248 = load i8*, i8** %2, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 10
  %250 = load i32, i32* @nonce, align 4
  %251 = load i32, i32* @firstkey, align 4
  %252 = call i64 @crypto_secretbox_easy(i8* %247, i8* %249, i32 10, i32 %250, i32 %251)
  store i64 0, i64* %4, align 8
  br label %253

253:                                              ; preds = %266, %238
  %254 = load i64, i64* %4, align 8
  %255 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %256 = add nsw i32 10, %255
  %257 = sext i32 %256 to i64
  %258 = icmp ult i64 %254, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %253
  %260 = load i8*, i8** %2, align 8
  %261 = load i64, i64* %4, align 8
  %262 = getelementptr inbounds i8, i8* %260, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %264)
  br label %266

266:                                              ; preds = %259
  %267 = load i64, i64* %4, align 8
  %268 = add i64 %267, 1
  store i64 %268, i64* %4, align 8
  br label %253

269:                                              ; preds = %253
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %271 = load i8*, i8** %2, align 8
  %272 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %273 = add nsw i32 131, %272
  %274 = add nsw i32 %273, 1
  %275 = call i32 @memset(i8* %271, i32 0, i32 %274)
  %276 = load i8*, i8** %2, align 8
  %277 = load i8*, i8** @m, align 8
  %278 = call i32 @memcpy(i8* %276, i8* %277, i32 20)
  %279 = load i8*, i8** %2, align 8
  %280 = getelementptr inbounds i8, i8* %279, i64 10
  %281 = load i8*, i8** %2, align 8
  %282 = load i32, i32* @nonce, align 4
  %283 = load i32, i32* @firstkey, align 4
  %284 = call i64 @crypto_secretbox_easy(i8* %280, i8* %281, i32 10, i32 %282, i32 %283)
  store i64 0, i64* %4, align 8
  br label %285

285:                                              ; preds = %298, %269
  %286 = load i64, i64* %4, align 8
  %287 = load i32, i32* @crypto_secretbox_MACBYTES, align 4
  %288 = add nsw i32 10, %287
  %289 = sext i32 %288 to i64
  %290 = icmp ult i64 %286, %289
  br i1 %290, label %291, label %301

291:                                              ; preds = %285
  %292 = load i8*, i8** %2, align 8
  %293 = load i64, i64* %4, align 8
  %294 = getelementptr inbounds i8, i8* %292, i64 %293
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %296)
  br label %298

298:                                              ; preds = %291
  %299 = load i64, i64* %4, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %4, align 8
  br label %285

301:                                              ; preds = %285
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %303 = load i8*, i8** %3, align 8
  %304 = call i32 @sodium_free(i8* %303)
  %305 = load i8*, i8** %2, align 8
  %306 = call i32 @sodium_free(i8* %305)
  ret i32 0
}

declare dso_local i64 @sodium_malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @crypto_secretbox_easy(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @crypto_secretbox_detached(i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @crypto_secretbox_open_easy(i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @randombytes_uniform(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sodium_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
