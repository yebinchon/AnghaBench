; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_sp_setup_tbl.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_mpsp.c_sp_setup_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_9__ = type { i8*, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i8* }
%struct.TYPE_13__ = type { i8* }
%struct.stat = type { i64 }

@SP_ROOT_CNT = common dso_local global i32 0, align 4
@SP_PW_MAX = common dso_local global i32 0, align 4
@CHARSIZ = common dso_local global i32 0, align 4
@SP_MARKOV_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@SP_HCSTAT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: Could not read data.\00", align 1
@SP_FILESZ = common dso_local global i64 0, align 8
@SZ_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: Could not uncompress data.\00", align 1
@SP_VERSION = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"%s: Invalid header\00", align 1
@sp_comp_val = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @sp_setup_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_setup_tbl(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [256 x i8], align 16
  %25 = alloca %struct.stat, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8, align 1
  %33 = alloca i64, align 8
  %34 = alloca i64*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i64*, align 8
  %41 = alloca i64*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i64*, align 8
  %45 = alloca i64*, align 8
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca %struct.TYPE_11__*, align 8
  %51 = alloca i64, align 8
  %52 = alloca i32, align 4
  %53 = alloca %struct.TYPE_11__*, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i8*, align 8
  %60 = alloca i32, align 4
  %61 = alloca i8*, align 8
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %4, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %5, align 8
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %6, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %7, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %8, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** %9, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %10, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %11, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %12, align 8
  %92 = load i32, i32* @SP_ROOT_CNT, align 4
  %93 = call i64 @hccalloc(i32 %92, i32 8)
  %94 = inttoptr i64 %93 to i64*
  store i64* %94, i64** %13, align 8
  %95 = load i64*, i64** %13, align 8
  store i64* %95, i64** %14, align 8
  %96 = load i32, i32* @SP_PW_MAX, align 4
  %97 = zext i32 %96 to i64
  %98 = call i8* @llvm.stacksave()
  store i8* %98, i8** %15, align 8
  %99 = alloca i64*, i64 %97, align 16
  store i64 %97, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %100

100:                                              ; preds = %113, %1
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @SP_PW_MAX, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %100
  %105 = load i64*, i64** %14, align 8
  %106 = load i32, i32* %17, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64*, i64** %99, i64 %107
  store i64* %105, i64** %108, align 8
  %109 = load i32, i32* @CHARSIZ, align 4
  %110 = load i64*, i64** %14, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64* %112, i64** %14, align 8
  br label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %17, align 4
  br label %100

116:                                              ; preds = %100
  %117 = load i32, i32* @SP_MARKOV_CNT, align 4
  %118 = call i64 @hccalloc(i32 %117, i32 8)
  %119 = inttoptr i64 %118 to i64*
  store i64* %119, i64** %18, align 8
  %120 = load i64*, i64** %18, align 8
  store i64* %120, i64** %19, align 8
  %121 = load i32, i32* @SP_PW_MAX, align 4
  %122 = zext i32 %121 to i64
  %123 = load i32, i32* @CHARSIZ, align 4
  %124 = zext i32 %123 to i64
  %125 = mul nuw i64 %122, %124
  %126 = alloca i64*, i64 %125, align 16
  store i64 %122, i64* %20, align 8
  store i64 %124, i64* %21, align 8
  store i32 0, i32* %22, align 4
  br label %127

127:                                              ; preds = %153, %116
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* @SP_PW_MAX, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %127
  store i32 0, i32* %23, align 4
  br label %132

132:                                              ; preds = %149, %131
  %133 = load i32, i32* %23, align 4
  %134 = load i32, i32* @CHARSIZ, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %132
  %137 = load i64*, i64** %19, align 8
  %138 = load i32, i32* %22, align 4
  %139 = sext i32 %138 to i64
  %140 = mul nsw i64 %139, %124
  %141 = getelementptr inbounds i64*, i64** %126, i64 %140
  %142 = load i32, i32* %23, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64*, i64** %141, i64 %143
  store i64* %137, i64** %144, align 8
  %145 = load i32, i32* @CHARSIZ, align 4
  %146 = load i64*, i64** %19, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  store i64* %148, i64** %19, align 8
  br label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %23, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %23, align 4
  br label %132

152:                                              ; preds = %132
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %22, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %22, align 4
  br label %127

156:                                              ; preds = %127
  %157 = load i8*, i8** %8, align 8
  %158 = icmp eq i8* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  %161 = load i8*, i8** %7, align 8
  %162 = load i8*, i8** @SP_HCSTAT, align 8
  %163 = call i32 @snprintf(i8* %160, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %161, i8* %162)
  %164 = getelementptr inbounds [256 x i8], [256 x i8]* %24, i64 0, i64 0
  store i8* %164, i8** %8, align 8
  br label %165

165:                                              ; preds = %159, %156
  %166 = load i8*, i8** %8, align 8
  %167 = call i32 @stat(i8* %166, %struct.stat* %25)
  %168 = icmp eq i32 %167, -1
  br i1 %168, label %169, label %175

169:                                              ; preds = %165
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = load i32, i32* @errno, align 4
  %173 = call i32 @strerror(i32 %172)
  %174 = call i32 (%struct.TYPE_12__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_12__* %170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %171, i32 %173)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %26, align 4
  br label %632

175:                                              ; preds = %165
  %176 = load i8*, i8** %8, align 8
  %177 = call i32 @hc_fopen(i32* %27, i8* %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %175
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %181 = load i8*, i8** %8, align 8
  %182 = load i32, i32* @errno, align 4
  %183 = call i32 @strerror(i32 %182)
  %184 = call i32 (%struct.TYPE_12__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_12__* %180, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %181, i32 %183)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %26, align 4
  br label %632

185:                                              ; preds = %175
  %186 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = call i64 @hcmalloc(i64 %187)
  %189 = inttoptr i64 %188 to i64*
  store i64* %189, i64** %28, align 8
  %190 = load i64*, i64** %28, align 8
  %191 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i64 @hc_fread(i64* %190, i32 1, i64 %192, i32* %27)
  store i64 %193, i64* %29, align 8
  %194 = load i64, i64* %29, align 8
  %195 = getelementptr inbounds %struct.stat, %struct.stat* %25, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %194, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %185
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %200 = load i8*, i8** %8, align 8
  %201 = call i32 (%struct.TYPE_12__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_12__* %199, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %200)
  %202 = call i32 @hc_fclose(i32* %27)
  %203 = load i64*, i64** %28, align 8
  %204 = call i32 @hcfree(i64* %203)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %26, align 4
  br label %632

205:                                              ; preds = %185
  %206 = call i32 @hc_fclose(i32* %27)
  %207 = load i64, i64* @SP_FILESZ, align 8
  %208 = call i64 @hcmalloc(i64 %207)
  %209 = inttoptr i64 %208 to i64*
  store i64* %209, i64** %30, align 8
  %210 = load i64, i64* @SP_FILESZ, align 8
  store i64 %210, i64* %31, align 8
  store i8 28, i8* %32, align 1
  %211 = load i64*, i64** %28, align 8
  %212 = load i64*, i64** %30, align 8
  %213 = call i64 @hc_lzma2_decompress(i64* %211, i64* %29, i64* %212, i64* %31, i8* %32)
  store i64 %213, i64* %33, align 8
  %214 = load i64, i64* %33, align 8
  %215 = load i64, i64* @SZ_OK, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %205
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %219 = load i8*, i8** %8, align 8
  %220 = call i32 (%struct.TYPE_12__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_12__* %218, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %219)
  %221 = load i64*, i64** %28, align 8
  %222 = call i32 @hcfree(i64* %221)
  %223 = load i64*, i64** %30, align 8
  %224 = call i32 @hcfree(i64* %223)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %26, align 4
  br label %632

225:                                              ; preds = %205
  %226 = load i64, i64* %31, align 8
  %227 = load i64, i64* @SP_FILESZ, align 8
  %228 = icmp ne i64 %226, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %225
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %231 = load i8*, i8** %8, align 8
  %232 = call i32 (%struct.TYPE_12__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_12__* %230, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %231)
  %233 = load i64*, i64** %28, align 8
  %234 = call i32 @hcfree(i64* %233)
  %235 = load i64*, i64** %30, align 8
  %236 = call i32 @hcfree(i64* %235)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %26, align 4
  br label %632

237:                                              ; preds = %225
  %238 = load i64*, i64** %30, align 8
  store i64* %238, i64** %34, align 8
  %239 = load i64*, i64** %34, align 8
  %240 = getelementptr inbounds i64, i64* %239, i32 1
  store i64* %240, i64** %34, align 8
  %241 = load i64, i64* %239, align 8
  store i64 %241, i64* %35, align 8
  %242 = load i64*, i64** %34, align 8
  %243 = getelementptr inbounds i64, i64* %242, i32 1
  store i64* %243, i64** %34, align 8
  %244 = load i64, i64* %242, align 8
  store i64 %244, i64* %36, align 8
  %245 = load i64*, i64** %13, align 8
  %246 = load i64*, i64** %34, align 8
  %247 = load i32, i32* @SP_ROOT_CNT, align 4
  %248 = sext i32 %247 to i64
  %249 = mul i64 8, %248
  %250 = trunc i64 %249 to i32
  %251 = call i32 @memcpy(i64* %245, i64* %246, i32 %250)
  %252 = load i32, i32* @SP_ROOT_CNT, align 4
  %253 = load i64*, i64** %34, align 8
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i64, i64* %253, i64 %254
  store i64* %255, i64** %34, align 8
  %256 = load i64*, i64** %18, align 8
  %257 = load i64*, i64** %34, align 8
  %258 = load i32, i32* @SP_MARKOV_CNT, align 4
  %259 = sext i32 %258 to i64
  %260 = mul i64 8, %259
  %261 = trunc i64 %260 to i32
  %262 = call i32 @memcpy(i64* %256, i64* %257, i32 %261)
  %263 = load i64*, i64** %28, align 8
  %264 = call i32 @hcfree(i64* %263)
  %265 = load i64*, i64** %30, align 8
  %266 = call i32 @hcfree(i64* %265)
  %267 = load i64, i64* %35, align 8
  %268 = call i64 @byte_swap_64(i64 %267)
  store i64 %268, i64* %35, align 8
  %269 = load i64, i64* %36, align 8
  %270 = call i64 @byte_swap_64(i64 %269)
  store i64 %270, i64* %36, align 8
  store i32 0, i32* %37, align 4
  br label %271

271:                                              ; preds = %286, %237
  %272 = load i32, i32* %37, align 4
  %273 = load i32, i32* @SP_ROOT_CNT, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %289

275:                                              ; preds = %271
  %276 = load i64*, i64** %13, align 8
  %277 = load i32, i32* %37, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %276, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = call i64 @byte_swap_64(i64 %280)
  %282 = load i64*, i64** %13, align 8
  %283 = load i32, i32* %37, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  store i64 %281, i64* %285, align 8
  br label %286

286:                                              ; preds = %275
  %287 = load i32, i32* %37, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %37, align 4
  br label %271

289:                                              ; preds = %271
  store i32 0, i32* %38, align 4
  br label %290

290:                                              ; preds = %305, %289
  %291 = load i32, i32* %38, align 4
  %292 = load i32, i32* @SP_MARKOV_CNT, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %308

294:                                              ; preds = %290
  %295 = load i64*, i64** %18, align 8
  %296 = load i32, i32* %38, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i64, i64* %295, i64 %297
  %299 = load i64, i64* %298, align 8
  %300 = call i64 @byte_swap_64(i64 %299)
  %301 = load i64*, i64** %18, align 8
  %302 = load i32, i32* %38, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  store i64 %300, i64* %304, align 8
  br label %305

305:                                              ; preds = %294
  %306 = load i32, i32* %38, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %38, align 4
  br label %290

308:                                              ; preds = %290
  %309 = load i64, i64* %35, align 8
  %310 = load i64, i64* @SP_VERSION, align 8
  %311 = icmp ne i64 %309, %310
  br i1 %311, label %312, label %316

312:                                              ; preds = %308
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %314 = load i8*, i8** %8, align 8
  %315 = call i32 (%struct.TYPE_12__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_12__* %313, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %314)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %26, align 4
  br label %632

316:                                              ; preds = %308
  %317 = load i64, i64* %36, align 8
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %316
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %321 = load i8*, i8** %8, align 8
  %322 = call i32 (%struct.TYPE_12__*, i8*, i8*, ...) @event_log_error(%struct.TYPE_12__* %320, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %321)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %26, align 4
  br label %632

323:                                              ; preds = %316
  %324 = load i8*, i8** %9, align 8
  %325 = icmp ne i8* %324, null
  br i1 %325, label %326, label %339

326:                                              ; preds = %323
  %327 = load i64*, i64** %13, align 8
  %328 = load i32, i32* @SP_ROOT_CNT, align 4
  %329 = sext i32 %328 to i64
  %330 = mul i64 %329, 8
  %331 = trunc i64 %330 to i32
  %332 = call i32 @memset(i64* %327, i32 0, i32 %331)
  %333 = load i64*, i64** %18, align 8
  %334 = load i32, i32* @SP_MARKOV_CNT, align 4
  %335 = sext i32 %334 to i64
  %336 = mul i64 %335, 8
  %337 = trunc i64 %336 to i32
  %338 = call i32 @memset(i64* %333, i32 0, i32 %337)
  br label %339

339:                                              ; preds = %326, %323
  %340 = load i8*, i8** %10, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %464

342:                                              ; preds = %339
  store i32 1, i32* %39, align 4
  br label %343

343:                                              ; preds = %370, %342
  %344 = load i32, i32* %39, align 4
  %345 = load i32, i32* @SP_PW_MAX, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %347, label %373

347:                                              ; preds = %343
  %348 = getelementptr inbounds i64*, i64** %99, i64 0
  %349 = load i64*, i64** %348, align 16
  store i64* %349, i64** %40, align 8
  %350 = load i32, i32* %39, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64*, i64** %99, i64 %351
  %353 = load i64*, i64** %352, align 8
  store i64* %353, i64** %41, align 8
  store i32 0, i32* %42, align 4
  br label %354

354:                                              ; preds = %366, %347
  %355 = load i32, i32* %42, align 4
  %356 = load i32, i32* @CHARSIZ, align 4
  %357 = icmp slt i32 %355, %356
  br i1 %357, label %358, label %369

358:                                              ; preds = %354
  %359 = load i64*, i64** %41, align 8
  %360 = getelementptr inbounds i64, i64* %359, i32 1
  store i64* %360, i64** %41, align 8
  %361 = load i64, i64* %359, align 8
  %362 = load i64*, i64** %40, align 8
  %363 = getelementptr inbounds i64, i64* %362, i32 1
  store i64* %363, i64** %40, align 8
  %364 = load i64, i64* %362, align 8
  %365 = add nsw i64 %364, %361
  store i64 %365, i64* %362, align 8
  br label %366

366:                                              ; preds = %358
  %367 = load i32, i32* %42, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %42, align 4
  br label %354

369:                                              ; preds = %354
  br label %370

370:                                              ; preds = %369
  %371 = load i32, i32* %39, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %39, align 4
  br label %343

373:                                              ; preds = %343
  store i32 1, i32* %43, align 4
  br label %374

374:                                              ; preds = %414, %373
  %375 = load i32, i32* %43, align 4
  %376 = load i32, i32* @SP_PW_MAX, align 4
  %377 = icmp slt i32 %375, %376
  br i1 %377, label %378, label %417

378:                                              ; preds = %374
  %379 = mul nsw i64 0, %124
  %380 = getelementptr inbounds i64*, i64** %126, i64 %379
  %381 = getelementptr inbounds i64*, i64** %380, i64 0
  %382 = load i64*, i64** %381, align 8
  store i64* %382, i64** %44, align 8
  %383 = load i32, i32* %43, align 4
  %384 = sext i32 %383 to i64
  %385 = mul nsw i64 %384, %124
  %386 = getelementptr inbounds i64*, i64** %126, i64 %385
  %387 = getelementptr inbounds i64*, i64** %386, i64 0
  %388 = load i64*, i64** %387, align 8
  store i64* %388, i64** %45, align 8
  store i32 0, i32* %46, align 4
  br label %389

389:                                              ; preds = %410, %378
  %390 = load i32, i32* %46, align 4
  %391 = load i32, i32* @CHARSIZ, align 4
  %392 = icmp slt i32 %390, %391
  br i1 %392, label %393, label %413

393:                                              ; preds = %389
  store i32 0, i32* %47, align 4
  br label %394

394:                                              ; preds = %406, %393
  %395 = load i32, i32* %47, align 4
  %396 = load i32, i32* @CHARSIZ, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %409

398:                                              ; preds = %394
  %399 = load i64*, i64** %45, align 8
  %400 = getelementptr inbounds i64, i64* %399, i32 1
  store i64* %400, i64** %45, align 8
  %401 = load i64, i64* %399, align 8
  %402 = load i64*, i64** %44, align 8
  %403 = getelementptr inbounds i64, i64* %402, i32 1
  store i64* %403, i64** %44, align 8
  %404 = load i64, i64* %402, align 8
  %405 = add nsw i64 %404, %401
  store i64 %405, i64* %402, align 8
  br label %406

406:                                              ; preds = %398
  %407 = load i32, i32* %47, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %47, align 4
  br label %394

409:                                              ; preds = %394
  br label %410

410:                                              ; preds = %409
  %411 = load i32, i32* %46, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %46, align 4
  br label %389

413:                                              ; preds = %389
  br label %414

414:                                              ; preds = %413
  %415 = load i32, i32* %43, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %43, align 4
  br label %374

417:                                              ; preds = %374
  store i32 1, i32* %48, align 4
  br label %418

418:                                              ; preds = %434, %417
  %419 = load i32, i32* %48, align 4
  %420 = load i32, i32* @SP_PW_MAX, align 4
  %421 = icmp slt i32 %419, %420
  br i1 %421, label %422, label %437

422:                                              ; preds = %418
  %423 = load i32, i32* %48, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i64*, i64** %99, i64 %424
  %426 = load i64*, i64** %425, align 8
  %427 = getelementptr inbounds i64*, i64** %99, i64 0
  %428 = load i64*, i64** %427, align 16
  %429 = load i32, i32* @CHARSIZ, align 4
  %430 = sext i32 %429 to i64
  %431 = mul i64 %430, 8
  %432 = trunc i64 %431 to i32
  %433 = call i32 @memcpy(i64* %426, i64* %428, i32 %432)
  br label %434

434:                                              ; preds = %422
  %435 = load i32, i32* %48, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %48, align 4
  br label %418

437:                                              ; preds = %418
  store i32 1, i32* %49, align 4
  br label %438

438:                                              ; preds = %460, %437
  %439 = load i32, i32* %49, align 4
  %440 = load i32, i32* @SP_PW_MAX, align 4
  %441 = icmp slt i32 %439, %440
  br i1 %441, label %442, label %463

442:                                              ; preds = %438
  %443 = load i32, i32* %49, align 4
  %444 = sext i32 %443 to i64
  %445 = mul nsw i64 %444, %124
  %446 = getelementptr inbounds i64*, i64** %126, i64 %445
  %447 = getelementptr inbounds i64*, i64** %446, i64 0
  %448 = load i64*, i64** %447, align 8
  %449 = mul nsw i64 0, %124
  %450 = getelementptr inbounds i64*, i64** %126, i64 %449
  %451 = getelementptr inbounds i64*, i64** %450, i64 0
  %452 = load i64*, i64** %451, align 8
  %453 = load i32, i32* @CHARSIZ, align 4
  %454 = load i32, i32* @CHARSIZ, align 4
  %455 = mul nsw i32 %453, %454
  %456 = sext i32 %455 to i64
  %457 = mul i64 %456, 8
  %458 = trunc i64 %457 to i32
  %459 = call i32 @memcpy(i64* %448, i64* %452, i32 %458)
  br label %460

460:                                              ; preds = %442
  %461 = load i32, i32* %49, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %49, align 4
  br label %438

463:                                              ; preds = %438
  br label %464

464:                                              ; preds = %463, %339
  %465 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %465, %struct.TYPE_11__** %50, align 8
  %466 = load i32, i32* @SP_PW_MAX, align 4
  %467 = zext i32 %466 to i64
  %468 = alloca %struct.TYPE_11__*, i64 %467, align 16
  store i64 %467, i64* %51, align 8
  store i32 0, i32* %52, align 4
  br label %469

469:                                              ; preds = %482, %464
  %470 = load i32, i32* %52, align 4
  %471 = load i32, i32* @SP_PW_MAX, align 4
  %472 = icmp slt i32 %470, %471
  br i1 %472, label %473, label %485

473:                                              ; preds = %469
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %475 = load i32, i32* %52, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %468, i64 %476
  store %struct.TYPE_11__* %474, %struct.TYPE_11__** %477, align 8
  %478 = load i32, i32* @CHARSIZ, align 4
  %479 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %480 = sext i32 %478 to i64
  %481 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %479, i64 %480
  store %struct.TYPE_11__* %481, %struct.TYPE_11__** %50, align 8
  br label %482

482:                                              ; preds = %473
  %483 = load i32, i32* %52, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %52, align 4
  br label %469

485:                                              ; preds = %469
  %486 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %486, %struct.TYPE_11__** %53, align 8
  %487 = load i32, i32* @SP_PW_MAX, align 4
  %488 = zext i32 %487 to i64
  %489 = load i32, i32* @CHARSIZ, align 4
  %490 = zext i32 %489 to i64
  %491 = mul nuw i64 %488, %490
  %492 = alloca %struct.TYPE_11__*, i64 %491, align 16
  store i64 %488, i64* %54, align 8
  store i64 %490, i64* %55, align 8
  store i32 0, i32* %56, align 4
  br label %493

493:                                              ; preds = %519, %485
  %494 = load i32, i32* %56, align 4
  %495 = load i32, i32* @SP_PW_MAX, align 4
  %496 = icmp slt i32 %494, %495
  br i1 %496, label %497, label %522

497:                                              ; preds = %493
  store i32 0, i32* %57, align 4
  br label %498

498:                                              ; preds = %515, %497
  %499 = load i32, i32* %57, align 4
  %500 = load i32, i32* @CHARSIZ, align 4
  %501 = icmp slt i32 %499, %500
  br i1 %501, label %502, label %518

502:                                              ; preds = %498
  %503 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %504 = load i32, i32* %56, align 4
  %505 = sext i32 %504 to i64
  %506 = mul nsw i64 %505, %490
  %507 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %492, i64 %506
  %508 = load i32, i32* %57, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %507, i64 %509
  store %struct.TYPE_11__* %503, %struct.TYPE_11__** %510, align 8
  %511 = load i32, i32* @CHARSIZ, align 4
  %512 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %513 = sext i32 %511 to i64
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %512, i64 %513
  store %struct.TYPE_11__* %514, %struct.TYPE_11__** %53, align 8
  br label %515

515:                                              ; preds = %502
  %516 = load i32, i32* %57, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %57, align 4
  br label %498

518:                                              ; preds = %498
  br label %519

519:                                              ; preds = %518
  %520 = load i32, i32* %56, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %56, align 4
  br label %493

522:                                              ; preds = %493
  store i32 0, i32* %58, align 4
  br label %523

523:                                              ; preds = %549, %522
  %524 = load i32, i32* %58, align 4
  %525 = load i32, i32* @SP_ROOT_CNT, align 4
  %526 = icmp slt i32 %524, %525
  br i1 %526, label %527, label %552

527:                                              ; preds = %523
  %528 = load i32, i32* %58, align 4
  %529 = load i32, i32* @CHARSIZ, align 4
  %530 = srem i32 %528, %529
  %531 = sext i32 %530 to i64
  %532 = inttoptr i64 %531 to i8*
  store i8* %532, i8** %59, align 8
  %533 = load i8*, i8** %59, align 8
  %534 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %535 = load i32, i32* %58, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %534, i64 %536
  %538 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %537, i32 0, i32 1
  store i8* %533, i8** %538, align 8
  %539 = load i64*, i64** %13, align 8
  %540 = load i32, i32* %58, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i64, i64* %539, i64 %541
  %543 = load i64, i64* %542, align 8
  %544 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %545 = load i32, i32* %58, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %544, i64 %546
  %548 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %547, i32 0, i32 0
  store i64 %543, i64* %548, align 8
  br label %549

549:                                              ; preds = %527
  %550 = load i32, i32* %58, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %58, align 4
  br label %523

552:                                              ; preds = %523
  store i32 0, i32* %60, align 4
  br label %553

553:                                              ; preds = %579, %552
  %554 = load i32, i32* %60, align 4
  %555 = load i32, i32* @SP_MARKOV_CNT, align 4
  %556 = icmp slt i32 %554, %555
  br i1 %556, label %557, label %582

557:                                              ; preds = %553
  %558 = load i32, i32* %60, align 4
  %559 = load i32, i32* @CHARSIZ, align 4
  %560 = srem i32 %558, %559
  %561 = sext i32 %560 to i64
  %562 = inttoptr i64 %561 to i8*
  store i8* %562, i8** %61, align 8
  %563 = load i8*, i8** %61, align 8
  %564 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %565 = load i32, i32* %60, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %564, i64 %566
  %568 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %567, i32 0, i32 1
  store i8* %563, i8** %568, align 8
  %569 = load i64*, i64** %18, align 8
  %570 = load i32, i32* %60, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i64, i64* %569, i64 %571
  %573 = load i64, i64* %572, align 8
  %574 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %575 = load i32, i32* %60, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %574, i64 %576
  %578 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %577, i32 0, i32 0
  store i64 %573, i64* %578, align 8
  br label %579

579:                                              ; preds = %557
  %580 = load i32, i32* %60, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %60, align 4
  br label %553

582:                                              ; preds = %553
  %583 = load i64*, i64** %13, align 8
  %584 = call i32 @hcfree(i64* %583)
  %585 = load i64*, i64** %18, align 8
  %586 = call i32 @hcfree(i64* %585)
  store i32 0, i32* %62, align 4
  br label %587

587:                                              ; preds = %599, %582
  %588 = load i32, i32* %62, align 4
  %589 = load i32, i32* @SP_PW_MAX, align 4
  %590 = icmp slt i32 %588, %589
  br i1 %590, label %591, label %602

591:                                              ; preds = %587
  %592 = load i32, i32* %62, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %468, i64 %593
  %595 = load %struct.TYPE_11__*, %struct.TYPE_11__** %594, align 8
  %596 = load i32, i32* @CHARSIZ, align 4
  %597 = load i32, i32* @sp_comp_val, align 4
  %598 = call i32 @qsort(%struct.TYPE_11__* %595, i32 %596, i32 16, i32 %597)
  br label %599

599:                                              ; preds = %591
  %600 = load i32, i32* %62, align 4
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %62, align 4
  br label %587

602:                                              ; preds = %587
  store i32 0, i32* %63, align 4
  br label %603

603:                                              ; preds = %628, %602
  %604 = load i32, i32* %63, align 4
  %605 = load i32, i32* @SP_PW_MAX, align 4
  %606 = icmp slt i32 %604, %605
  br i1 %606, label %607, label %631

607:                                              ; preds = %603
  store i32 0, i32* %64, align 4
  br label %608

608:                                              ; preds = %624, %607
  %609 = load i32, i32* %64, align 4
  %610 = load i32, i32* @CHARSIZ, align 4
  %611 = icmp slt i32 %609, %610
  br i1 %611, label %612, label %627

612:                                              ; preds = %608
  %613 = load i32, i32* %63, align 4
  %614 = sext i32 %613 to i64
  %615 = mul nsw i64 %614, %490
  %616 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %492, i64 %615
  %617 = load i32, i32* %64, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %616, i64 %618
  %620 = load %struct.TYPE_11__*, %struct.TYPE_11__** %619, align 8
  %621 = load i32, i32* @CHARSIZ, align 4
  %622 = load i32, i32* @sp_comp_val, align 4
  %623 = call i32 @qsort(%struct.TYPE_11__* %620, i32 %621, i32 16, i32 %622)
  br label %624

624:                                              ; preds = %612
  %625 = load i32, i32* %64, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %64, align 4
  br label %608

627:                                              ; preds = %608
  br label %628

628:                                              ; preds = %627
  %629 = load i32, i32* %63, align 4
  %630 = add nsw i32 %629, 1
  store i32 %630, i32* %63, align 4
  br label %603

631:                                              ; preds = %603
  store i32 0, i32* %2, align 4
  store i32 1, i32* %26, align 4
  br label %632

632:                                              ; preds = %631, %319, %312, %229, %217, %198, %179, %169
  %633 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %633)
  %634 = load i32, i32* %2, align 4
  ret i32 %634
}

declare dso_local i64 @hccalloc(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @event_log_error(%struct.TYPE_12__*, i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @hc_fopen(i32*, i8*, i8*) #1

declare dso_local i64 @hcmalloc(i64) #1

declare dso_local i64 @hc_fread(i64*, i32, i64, i32*) #1

declare dso_local i32 @hc_fclose(i32*) #1

declare dso_local i32 @hcfree(i64*) #1

declare dso_local i64 @hc_lzma2_decompress(i64*, i64*, i64*, i64*, i8*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i64 @byte_swap_64(i64) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_11__*, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
