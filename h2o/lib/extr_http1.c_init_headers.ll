; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_init_headers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_init_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i8*, i32 }
%struct.phr_header = type { i32, i32, i64, i64 }

@H2O_TOKEN_HOST = common dso_local global %struct.TYPE_24__* null, align 8
@H2O_TOKEN_CONTENT_LENGTH = common dso_local global %struct.TYPE_24__* null, align 8
@H2O_TOKEN_TRANSFER_ENCODING = common dso_local global %struct.TYPE_24__* null, align 8
@H2O_TOKEN_EXPECT = common dso_local global %struct.TYPE_24__* null, align 8
@H2O_TOKEN_UPGRADE = common dso_local global %struct.TYPE_24__* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"logic flaw\00", align 1
@H2O_TOKEN_CONNECTION = common dso_local global %struct.TYPE_24__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_26__*, %struct.phr_header*, i64, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_25__*, i32*)* @init_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_headers(i32* %0, %struct.TYPE_26__* %1, %struct.phr_header* %2, i64 %3, %struct.TYPE_25__* %4, %struct.TYPE_25__* %5, %struct.TYPE_25__* %6, %struct.TYPE_25__* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.phr_header*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_24__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %12, align 8
  store %struct.phr_header* %2, %struct.phr_header** %13, align 8
  store i64 %3, i64* %14, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %15, align 8
  store %struct.TYPE_25__* %5, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %6, %struct.TYPE_25__** %17, align 8
  store %struct.TYPE_25__* %7, %struct.TYPE_25__** %18, align 8
  store i32* %8, i32** %19, align 8
  %25 = load i32*, i32** %19, align 8
  store i32 -1, i32* %25, align 4
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %256

34:                                               ; preds = %9
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %37 = load i64, i64* %14, align 8
  %38 = call i32 @h2o_vector_reserve(i32* %35, %struct.TYPE_26__* %36, i64 %37)
  store i64 0, i64* %20, align 8
  br label %39

39:                                               ; preds = %252, %34
  %40 = load i64, i64* %20, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %255

43:                                               ; preds = %39
  %44 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %45 = load i64, i64* %20, align 8
  %46 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %44, i64 %45
  %47 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = zext i32 %48 to i64
  %50 = call i8* @llvm.stacksave()
  store i8* %50, i8** %22, align 8
  %51 = alloca i8, i64 %49, align 16
  store i64 %49, i64* %23, align 8
  %52 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %53 = load i64, i64* %20, align 8
  %54 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %52, i64 %53
  %55 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %24, align 4
  br label %248

59:                                               ; preds = %43
  %60 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %61 = load i64, i64* %20, align 8
  %62 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %60, i64 %61
  %63 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %66 = load i64, i64* %20, align 8
  %67 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %65, i64 %66
  %68 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @memcpy(i8* %51, i64 %64, i32 %69)
  %71 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %72 = load i64, i64* %20, align 8
  %73 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %71, i64 %72
  %74 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %78 = load i64, i64* %20, align 8
  %79 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %77, i64 %78
  %80 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @h2o_strtolower(i8* %76, i32 %81)
  %83 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %84 = load i64, i64* %20, align 8
  %85 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %83, i64 %84
  %86 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %89 = load i64, i64* %20, align 8
  %90 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %88, i64 %89
  %91 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.TYPE_24__* @h2o_lookup_token(i64 %87, i32 %92)
  store %struct.TYPE_24__* %93, %struct.TYPE_24__** %21, align 8
  %94 = icmp ne %struct.TYPE_24__* %93, null
  br i1 %94, label %95, label %223

95:                                               ; preds = %59
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %189

101:                                              ; preds = %95
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** @H2O_TOKEN_HOST, align 8
  %104 = icmp eq %struct.TYPE_24__* %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %107 = load i64, i64* %20, align 8
  %108 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %106, i64 %107
  %109 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i8*
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %115 = load i64, i64* %20, align 8
  %116 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %114, i64 %115
  %117 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 8
  br label %188

121:                                              ; preds = %101
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** @H2O_TOKEN_CONTENT_LENGTH, align 8
  %124 = icmp eq %struct.TYPE_24__* %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load i32*, i32** %19, align 8
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, -1
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i64, i64* %20, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i32*, i32** %19, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %125
  br label %187

134:                                              ; preds = %121
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** @H2O_TOKEN_TRANSFER_ENCODING, align 8
  %137 = icmp eq %struct.TYPE_24__* %135, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i64, i64* %20, align 8
  %140 = trunc i64 %139 to i32
  %141 = load i32*, i32** %19, align 8
  store i32 %140, i32* %141, align 4
  br label %186

142:                                              ; preds = %134
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** @H2O_TOKEN_EXPECT, align 8
  %145 = icmp eq %struct.TYPE_24__* %143, %144
  br i1 %145, label %146, label %162

146:                                              ; preds = %142
  %147 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %148 = load i64, i64* %20, align 8
  %149 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %147, i64 %148
  %150 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %156 = load i64, i64* %20, align 8
  %157 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %155, i64 %156
  %158 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 8
  br label %185

162:                                              ; preds = %142
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** @H2O_TOKEN_UPGRADE, align 8
  %165 = icmp eq %struct.TYPE_24__* %163, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %162
  %167 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %168 = load i64, i64* %20, align 8
  %169 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %167, i64 %168
  %170 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to i8*
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  store i8* %172, i8** %174, align 8
  %175 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %176 = load i64, i64* %20, align 8
  %177 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %175, i64 %176
  %178 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  br label %184

182:                                              ; preds = %162
  %183 = call i32 @assert(i32 0)
  br label %184

184:                                              ; preds = %182, %166
  br label %185

185:                                              ; preds = %184, %146
  br label %186

186:                                              ; preds = %185, %138
  br label %187

187:                                              ; preds = %186, %133
  br label %188

188:                                              ; preds = %187, %105
  br label %222

189:                                              ; preds = %95
  %190 = load i32*, i32** %11, align 8
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %193 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %194 = load i64, i64* %20, align 8
  %195 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %193, i64 %194
  %196 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %199 = load i64, i64* %20, align 8
  %200 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %198, i64 %199
  %201 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @h2o_add_header(i32* %190, %struct.TYPE_26__* %191, %struct.TYPE_24__* %192, i8* %51, i64 %197, i32 %202)
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** @H2O_TOKEN_CONNECTION, align 8
  %206 = icmp eq %struct.TYPE_24__* %204, %205
  br i1 %206, label %207, label %221

207:                                              ; preds = %189
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %209 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %210, align 8
  %212 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 0
  %219 = bitcast %struct.TYPE_25__* %208 to i8*
  %220 = bitcast %struct.TYPE_25__* %218 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %219, i8* align 8 %220, i64 16, i1 false)
  br label %221

221:                                              ; preds = %207, %189
  br label %222

222:                                              ; preds = %221, %188
  br label %247

223:                                              ; preds = %59
  %224 = load i32*, i32** %11, align 8
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %226 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %227 = load i64, i64* %20, align 8
  %228 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %226, i64 %227
  %229 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %228, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %232 = load i64, i64* %20, align 8
  %233 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %231, i64 %232
  %234 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %237 = load i64, i64* %20, align 8
  %238 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %236, i64 %237
  %239 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.phr_header*, %struct.phr_header** %13, align 8
  %242 = load i64, i64* %20, align 8
  %243 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %241, i64 %242
  %244 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @h2o_add_header_by_str(i32* %224, %struct.TYPE_26__* %225, i64 %230, i32 %235, i32 0, i8* %51, i64 %240, i32 %245)
  br label %247

247:                                              ; preds = %223, %222
  store i32 0, i32* %24, align 4
  br label %248

248:                                              ; preds = %247, %58
  %249 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %249)
  %250 = load i32, i32* %24, align 4
  switch i32 %250, label %259 [
    i32 0, label %251
    i32 1, label %257
  ]

251:                                              ; preds = %248
  br label %252

252:                                              ; preds = %251
  %253 = load i64, i64* %20, align 8
  %254 = add i64 %253, 1
  store i64 %254, i64* %20, align 8
  br label %39

255:                                              ; preds = %39
  br label %256

256:                                              ; preds = %255, %9
  store i32 0, i32* %10, align 4
  br label %257

257:                                              ; preds = %256, %248
  %258 = load i32, i32* %10, align 4
  ret i32 %258

259:                                              ; preds = %248
  unreachable
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_26__*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @h2o_strtolower(i8*, i32) #1

declare dso_local %struct.TYPE_24__* @h2o_lookup_token(i64, i32) #1

declare dso_local i32 @h2o_add_header(i32*, %struct.TYPE_26__*, %struct.TYPE_24__*, i8*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @h2o_add_header_by_str(i32*, %struct.TYPE_26__*, i64, i32, i32, i8*, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
