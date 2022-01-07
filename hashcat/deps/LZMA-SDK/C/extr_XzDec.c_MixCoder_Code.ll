; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_MixCoder_Code.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_XzDec.c_MixCoder_Code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32, i32*, i64*, i32*, i64*, i32*, %struct.TYPE_4__*, i32, i64, i8* }
%struct.TYPE_4__ = type { i64 (i32, i32*, i64*, i32*, i64*, i32, i32, i64*)*, i64 (i32, i64, i64)*, i32 }

@CODER_STATUS_NOT_FINISHED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"------- MixCoder Single ----------\00", align 1
@CODER_STATUS_FINISHED_WITH_MARK = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@True = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"standard mix\00", align 1
@CODER_BUF_SIZE = common dso_local global i32 0, align 4
@MIXCODER_NUM_FILTERS_MAX = common dso_local global i32 0, align 4
@SZ_ERROR_MEM = common dso_local global i64 0, align 8
@CODER_FINISH_ANY = common dso_local global i32 0, align 4
@False = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i64*, i32, i32*, i64*, i32, i32)* @MixCoder_Code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @MixCoder_Code(%struct.TYPE_5__* %0, i32* %1, i64* %2, i32 %3, i32* %4, i64* %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_4__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_4__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca %struct.TYPE_4__*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64* %2, i64** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i64* %5, i64** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %42 = load i64*, i64** %12, align 8
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %18, align 8
  %44 = load i64*, i64** %15, align 8
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %19, align 8
  %46 = load i64*, i64** %12, align 8
  store i64 0, i64* %46, align 8
  %47 = load i64*, i64** %15, align 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 12
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %9, align 8
  br label %489

56:                                               ; preds = %8
  %57 = load i8*, i8** @CODER_STATUS_NOT_FINISHED, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 11
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %185

65:                                               ; preds = %56
  %66 = call i32 @PRF_STR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %67 = load i64, i64* %19, align 8
  store i64 %67, i64* %22, align 8
  %68 = load i64, i64* %18, align 8
  store i64 %68, i64* %21, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 9
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 0
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %24, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64 (i32, i32*, i64*, i32*, i64*, i32, i32, i64*)*, i64 (i32, i32*, i64*, i32*, i64*, i32, i32, i64*)** %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = call i64 %75(i32 %78, i32* null, i64* %21, i32* %79, i64* %22, i32 %80, i32 %81, i64* %83)
  store i64 %84, i64* %20, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CODER_STATUS_FINISHED_WITH_MARK, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %23, align 4
  %91 = load i64, i64* %20, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load i64, i64* %22, align 8
  %95 = load i64*, i64** %15, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i64, i64* %22, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 %96
  store i32* %98, i32** %14, align 8
  %99 = load i64, i64* %21, align 8
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, %99
  store i64 %103, i64* %101, align 8
  %104 = load i64, i64* %20, align 8
  %105 = load i64, i64* @SZ_OK, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %113, label %107

107:                                              ; preds = %65
  %108 = load i32, i32* %16, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %23, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110, %107, %65
  %114 = load i8*, i8** @True, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 12
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %113, %110
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i64, i64* %21, align 8
  %124 = load i64*, i64** %12, align 8
  store i64 %123, i64* %124, align 8
  br label %183

125:                                              ; preds = %117
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 12
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %182

130:                                              ; preds = %125
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %26, align 8
  store i32 1, i32* %25, align 4
  br label %134

134:                                              ; preds = %176, %130
  %135 = load i32, i32* %25, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp ult i32 %135, %138
  br i1 %139, label %140, label %179

140:                                              ; preds = %134
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 9
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %25, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  store %struct.TYPE_4__* %146, %struct.TYPE_4__** %27, align 8
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i64 (i32, i64, i64)*, i64 (i32, i64, i64)** %148, align 8
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 11
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* %26, align 8
  %157 = call i64 %149(i32 %152, i64 %155, i64 %156)
  store i64 %157, i64* %26, align 8
  %158 = load i32, i32* %23, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %140
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* %18, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163, %140
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %26, align 8
  br label %173

173:                                              ; preds = %169, %163, %160
  %174 = load i32, i32* %25, align 4
  %175 = call i32 @PRF_STR_INT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %173
  %177 = load i32, i32* %25, align 4
  %178 = add i32 %177, 1
  store i32 %178, i32* %25, align 4
  br label %134

179:                                              ; preds = %134
  %180 = load i64, i64* %26, align 8
  %181 = load i64*, i64** %12, align 8
  store i64 %180, i64* %181, align 8
  br label %182

182:                                              ; preds = %179, %125
  br label %183

183:                                              ; preds = %182, %122
  %184 = load i64, i64* %20, align 8
  store i64 %184, i64* %9, align 8
  br label %489

185:                                              ; preds = %56
  %186 = call i32 @PRF_STR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 1
  br i1 %190, label %191, label %217

191:                                              ; preds = %185
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 8
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %215, label %196

196:                                              ; preds = %191
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 10
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @CODER_BUF_SIZE, align 4
  %201 = load i32, i32* @MIXCODER_NUM_FILTERS_MAX, align 4
  %202 = sub nsw i32 %201, 1
  %203 = mul nsw i32 %200, %202
  %204 = call i64 @ISzAlloc_Alloc(i32 %199, i32 %203)
  %205 = inttoptr i64 %204 to i32*
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 8
  store i32* %205, i32** %207, align 8
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 8
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %196
  %213 = load i64, i64* @SZ_ERROR_MEM, align 8
  store i64 %213, i64* %9, align 8
  br label %489

214:                                              ; preds = %196
  br label %215

215:                                              ; preds = %214, %191
  %216 = load i32, i32* @CODER_FINISH_ANY, align 4
  store i32 %216, i32* %17, align 4
  br label %217

217:                                              ; preds = %215, %185
  br label %218

218:                                              ; preds = %488, %217
  %219 = load i8*, i8** @False, align 8
  store i8* %219, i8** %28, align 8
  %220 = load i8*, i8** @True, align 8
  store i8* %220, i8** %29, align 8
  %221 = load i64, i64* @SZ_OK, align 8
  store i64 %221, i64* %30, align 8
  %222 = load i8*, i8** @CODER_STATUS_NOT_FINISHED, align 8
  %223 = ptrtoint i8* %222 to i64
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  store i64 %223, i64* %225, align 8
  store i32 0, i32* %31, align 4
  br label %226

226:                                              ; preds = %473, %218
  %227 = load i32, i32* %31, align 4
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = icmp ult i32 %227, %230
  br i1 %231, label %232, label %476

232:                                              ; preds = %226
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 9
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = load i32, i32* %31, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i64 %237
  store %struct.TYPE_4__* %238, %struct.TYPE_4__** %33, align 8
  %239 = load i32, i32* %31, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %232
  %242 = load i32*, i32** %14, align 8
  store i32* %242, i32** %37, align 8
  %243 = load i64, i64* %19, align 8
  %244 = load i64*, i64** %15, align 8
  %245 = load i64, i64* %244, align 8
  %246 = sub nsw i64 %243, %245
  store i64 %246, i64* %36, align 8
  %247 = load i32, i32* %16, align 4
  store i32 %247, i32* %38, align 4
  br label %288

248:                                              ; preds = %232
  %249 = load i32, i32* %31, align 4
  %250 = sub i32 %249, 1
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %41, align 8
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 8
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* @CODER_BUF_SIZE, align 4
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* %41, align 8
  %258 = mul i64 %256, %257
  %259 = getelementptr inbounds i32, i32* %254, i64 %258
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 4
  %262 = load i32*, i32** %261, align 8
  %263 = load i64, i64* %41, align 8
  %264 = getelementptr inbounds i32, i32* %262, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %259, i64 %266
  store i32* %267, i32** %37, align 8
  %268 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %269 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %268, i32 0, i32 5
  %270 = load i64*, i64** %269, align 8
  %271 = load i64, i64* %41, align 8
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 4
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* %41, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = sub nsw i64 %273, %280
  store i64 %281, i64* %36, align 8
  %282 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 6
  %284 = load i32*, i32** %283, align 8
  %285 = load i64, i64* %41, align 8
  %286 = getelementptr inbounds i32, i32* %284, i64 %285
  %287 = load i32, i32* %286, align 4
  store i32 %287, i32* %38, align 4
  br label %288

288:                                              ; preds = %248, %241
  %289 = load i32, i32* %31, align 4
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = sub nsw i32 %292, 1
  %294 = icmp eq i32 %289, %293
  br i1 %294, label %295, label %301

295:                                              ; preds = %288
  %296 = load i32*, i32** %11, align 8
  store i32* %296, i32** %34, align 8
  %297 = load i64, i64* %18, align 8
  %298 = load i64*, i64** %12, align 8
  %299 = load i64, i64* %298, align 8
  %300 = sub nsw i64 %297, %299
  store i64 %300, i64* %35, align 8
  br label %330

301:                                              ; preds = %288
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 4
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %31, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %311 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %310, i32 0, i32 5
  %312 = load i64*, i64** %311, align 8
  %313 = load i32, i32* %31, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i64, i64* %312, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = icmp ne i64 %309, %316
  br i1 %317, label %318, label %319

318:                                              ; preds = %301
  br label %473

319:                                              ; preds = %301
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 8
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* @CODER_BUF_SIZE, align 4
  %324 = load i32, i32* %31, align 4
  %325 = mul i32 %323, %324
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %322, i64 %326
  store i32* %327, i32** %34, align 8
  %328 = load i32, i32* @CODER_BUF_SIZE, align 4
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %35, align 8
  br label %330

330:                                              ; preds = %319, %295
  %331 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %332 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %331, i32 0, i32 7
  %333 = load i64*, i64** %332, align 8
  %334 = load i32, i32* %31, align 4
  %335 = zext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @SZ_OK, align 8
  %339 = icmp ne i64 %337, %338
  br i1 %339, label %340, label %353

340:                                              ; preds = %330
  %341 = load i64, i64* %30, align 8
  %342 = load i64, i64* @SZ_OK, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %352

344:                                              ; preds = %340
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 7
  %347 = load i64*, i64** %346, align 8
  %348 = load i32, i32* %31, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %347, i64 %349
  %351 = load i64, i64* %350, align 8
  store i64 %351, i64* %30, align 8
  br label %352

352:                                              ; preds = %344, %340
  br label %473

353:                                              ; preds = %330
  %354 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 0
  %356 = load i64 (i32, i32*, i64*, i32*, i64*, i32, i32, i64*)*, i64 (i32, i32*, i64*, i32*, i64*, i32, i32, i64*)** %355, align 8
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %358 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = load i32*, i32** %34, align 8
  %361 = load i32*, i32** %37, align 8
  %362 = load i32, i32* %38, align 4
  %363 = load i32, i32* %17, align 4
  %364 = call i64 %356(i32 %359, i32* %360, i64* %35, i32* %361, i64* %36, i32 %362, i32 %363, i64* %40)
  store i64 %364, i64* %32, align 8
  %365 = load i64, i64* %32, align 8
  %366 = load i64, i64* @SZ_OK, align 8
  %367 = icmp ne i64 %365, %366
  br i1 %367, label %368, label %382

368:                                              ; preds = %353
  %369 = load i64, i64* %32, align 8
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %371 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %370, i32 0, i32 7
  %372 = load i64*, i64** %371, align 8
  %373 = load i32, i32* %31, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds i64, i64* %372, i64 %374
  store i64 %369, i64* %375, align 8
  %376 = load i64, i64* %30, align 8
  %377 = load i64, i64* @SZ_OK, align 8
  %378 = icmp eq i64 %376, %377
  br i1 %378, label %379, label %381

379:                                              ; preds = %368
  %380 = load i64, i64* %32, align 8
  store i64 %380, i64* %30, align 8
  br label %381

381:                                              ; preds = %379, %368
  br label %382

382:                                              ; preds = %381, %353
  %383 = load i64, i64* %40, align 8
  %384 = load i64, i64* @CODER_STATUS_FINISHED_WITH_MARK, align 8
  %385 = icmp eq i64 %383, %384
  %386 = zext i1 %385 to i32
  store i32 %386, i32* %39, align 4
  %387 = load i32, i32* %39, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %404, label %389

389:                                              ; preds = %382
  %390 = load i8*, i8** @False, align 8
  store i8* %390, i8** %29, align 8
  %391 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 8
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %395, label %403

395:                                              ; preds = %389
  %396 = load i64, i64* %32, align 8
  %397 = load i64, i64* @SZ_OK, align 8
  %398 = icmp eq i64 %396, %397
  br i1 %398, label %399, label %403

399:                                              ; preds = %395
  %400 = load i64, i64* %40, align 8
  %401 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 1
  store i64 %400, i64* %402, align 8
  br label %403

403:                                              ; preds = %399, %395, %389
  br label %404

404:                                              ; preds = %403, %382
  %405 = load i32, i32* %31, align 4
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %415

407:                                              ; preds = %404
  %408 = load i64, i64* %36, align 8
  %409 = load i64*, i64** %15, align 8
  %410 = load i64, i64* %409, align 8
  %411 = add nsw i64 %410, %408
  store i64 %411, i64* %409, align 8
  %412 = load i64, i64* %36, align 8
  %413 = load i32*, i32** %14, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 %412
  store i32* %414, i32** %14, align 8
  br label %428

415:                                              ; preds = %404
  %416 = load i64, i64* %36, align 8
  %417 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %418 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %417, i32 0, i32 4
  %419 = load i32*, i32** %418, align 8
  %420 = load i32, i32* %31, align 4
  %421 = zext i32 %420 to i64
  %422 = sub i64 %421, 1
  %423 = getelementptr inbounds i32, i32* %419, i64 %422
  %424 = load i32, i32* %423, align 4
  %425 = sext i32 %424 to i64
  %426 = add nsw i64 %425, %416
  %427 = trunc i64 %426 to i32
  store i32 %427, i32* %423, align 4
  br label %428

428:                                              ; preds = %415, %407
  %429 = load i32, i32* %31, align 4
  %430 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %431 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 8
  %433 = sub nsw i32 %432, 1
  %434 = icmp eq i32 %429, %433
  br i1 %434, label %435, label %443

435:                                              ; preds = %428
  %436 = load i64, i64* %35, align 8
  %437 = load i64*, i64** %12, align 8
  %438 = load i64, i64* %437, align 8
  %439 = add nsw i64 %438, %436
  store i64 %439, i64* %437, align 8
  %440 = load i64, i64* %35, align 8
  %441 = load i32*, i32** %11, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 %440
  store i32* %442, i32** %11, align 8
  br label %464

443:                                              ; preds = %428
  %444 = load i64, i64* %35, align 8
  %445 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %446 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %445, i32 0, i32 5
  %447 = load i64*, i64** %446, align 8
  %448 = load i32, i32* %31, align 4
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds i64, i64* %447, i64 %449
  store i64 %444, i64* %450, align 8
  %451 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %452 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %451, i32 0, i32 4
  %453 = load i32*, i32** %452, align 8
  %454 = load i32, i32* %31, align 4
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds i32, i32* %453, i64 %455
  store i32 0, i32* %456, align 4
  %457 = load i32, i32* %39, align 4
  %458 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %459 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %458, i32 0, i32 6
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %31, align 4
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  store i32 %457, i32* %463, align 4
  br label %464

464:                                              ; preds = %443, %435
  %465 = load i64, i64* %35, align 8
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %470, label %467

467:                                              ; preds = %464
  %468 = load i64, i64* %36, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %472

470:                                              ; preds = %467, %464
  %471 = load i8*, i8** @True, align 8
  store i8* %471, i8** %28, align 8
  br label %472

472:                                              ; preds = %470, %467
  br label %473

473:                                              ; preds = %472, %352, %318
  %474 = load i32, i32* %31, align 4
  %475 = add i32 %474, 1
  store i32 %475, i32* %31, align 4
  br label %226

476:                                              ; preds = %226
  %477 = load i8*, i8** %28, align 8
  %478 = icmp ne i8* %477, null
  br i1 %478, label %488, label %479

479:                                              ; preds = %476
  %480 = load i8*, i8** %29, align 8
  %481 = icmp ne i8* %480, null
  br i1 %481, label %482, label %486

482:                                              ; preds = %479
  %483 = load i64, i64* @CODER_STATUS_FINISHED_WITH_MARK, align 8
  %484 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 1
  store i64 %483, i64* %485, align 8
  br label %486

486:                                              ; preds = %482, %479
  %487 = load i64, i64* %30, align 8
  store i64 %487, i64* %9, align 8
  br label %489

488:                                              ; preds = %476
  br label %218

489:                                              ; preds = %486, %212, %183, %52
  %490 = load i64, i64* %9, align 8
  ret i64 %490
}

declare dso_local i32 @PRF_STR(i8*) #1

declare dso_local i32 @PRF_STR_INT(i8*, i32) #1

declare dso_local i64 @ISzAlloc_Alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
