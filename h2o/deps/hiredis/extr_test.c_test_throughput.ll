; ModuleID = '/home/carl/AnghaBench/h2o/deps/hiredis/extr_test.c_test_throughput.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/hiredis/extr_test.c_test_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"Throughput:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"LPUSH mylist foo\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@REDIS_REPLY_STATUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"\09(%dx PING: %.3fs)\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"LRANGE mylist 0 499\00", align 1
@REDIS_REPLY_ARRAY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"\09(%dx LRANGE with 500 elements: %.3fs)\0A\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"\09(%dx PING (pipelined): %.3fs)\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"\09(%dx LRANGE with 500 elements (pipelined): %.3fs)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test_throughput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_throughput(i32 %0) #0 {
  %2 = alloca %struct.config, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = getelementptr inbounds %struct.config, %struct.config* %2, i32 0, i32 0
  store i32 %0, i32* %9, align 4
  %10 = getelementptr inbounds %struct.config, %struct.config* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @connect(i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = call i32 @test(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %21, %1
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 500
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_6__* @redisCommand(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @freeReplyObject(%struct.TYPE_6__* %19)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %14

24:                                               ; preds = %14
  store i32 1000, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = call %struct.TYPE_6__** @malloc(i32 %28)
  store %struct.TYPE_6__** %29, %struct.TYPE_6__*** %4, align 8
  %30 = call i64 (...) @usec()
  store i64 %30, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %62, %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = call %struct.TYPE_6__* @redisCommand(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %38, i64 %40
  store %struct.TYPE_6__* %37, %struct.TYPE_6__** %41, align 8
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %35
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 %51
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %48, %35
  %59 = phi i1 [ false, %35 ], [ %57, %48 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %31

65:                                               ; preds = %31
  %66 = call i64 (...) @usec()
  store i64 %66, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %78, %65
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %74
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i32 @freeReplyObject(%struct.TYPE_6__* %76)
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %67

81:                                               ; preds = %67
  %82 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %83 = call i32 @free(%struct.TYPE_6__** %82)
  %84 = load i32, i32* %6, align 4
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %7, align 8
  %87 = sub nsw i64 %85, %86
  %88 = sitofp i64 %87 to double
  %89 = fdiv double %88, 1.000000e+06
  %90 = fptosi double %89 to i64
  %91 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %84, i64 %90)
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = mul i64 8, %93
  %95 = trunc i64 %94 to i32
  %96 = call %struct.TYPE_6__** @malloc(i32 %95)
  store %struct.TYPE_6__** %96, %struct.TYPE_6__*** %4, align 8
  %97 = call i64 (...) @usec()
  store i64 %97, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %148, %81
  %99 = load i32, i32* %5, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %151

102:                                              ; preds = %98
  %103 = load i32*, i32** %3, align 8
  %104 = call %struct.TYPE_6__* @redisCommand(i32* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %105 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %105, i64 %107
  store %struct.TYPE_6__* %104, %struct.TYPE_6__** %108, align 8
  %109 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %109, i64 %111
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = icmp ne %struct.TYPE_6__* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %102
  %116 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %116, i64 %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %124 = icmp eq i64 %122, %123
  br label %125

125:                                              ; preds = %115, %102
  %126 = phi i1 [ false, %102 ], [ %124, %115 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %129, i64 %131
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = icmp ne %struct.TYPE_6__* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %125
  %136 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %136, i64 %138
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 500
  br label %144

144:                                              ; preds = %135, %125
  %145 = phi i1 [ false, %125 ], [ %143, %135 ]
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  br label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %98

151:                                              ; preds = %98
  %152 = call i64 (...) @usec()
  store i64 %152, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %164, %151
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %153
  %158 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %158, i64 %160
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = call i32 @freeReplyObject(%struct.TYPE_6__* %162)
  br label %164

164:                                              ; preds = %157
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %153

167:                                              ; preds = %153
  %168 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %169 = call i32 @free(%struct.TYPE_6__** %168)
  %170 = load i32, i32* %6, align 4
  %171 = load i64, i64* %8, align 8
  %172 = load i64, i64* %7, align 8
  %173 = sub nsw i64 %171, %172
  %174 = sitofp i64 %173 to double
  %175 = fdiv double %174, 1.000000e+06
  %176 = fptosi double %175 to i64
  %177 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %170, i64 %176)
  store i32 10000, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 8, %179
  %181 = trunc i64 %180 to i32
  %182 = call %struct.TYPE_6__** @malloc(i32 %181)
  store %struct.TYPE_6__** %182, %struct.TYPE_6__*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %183

183:                                              ; preds = %190, %167
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %6, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32*, i32** %3, align 8
  %189 = call i32 @redisAppendCommand(i32* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187
  %191 = load i32, i32* %5, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %5, align 4
  br label %183

193:                                              ; preds = %183
  %194 = call i64 (...) @usec()
  store i64 %194, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %195

195:                                              ; preds = %231, %193
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* %6, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %234

199:                                              ; preds = %195
  %200 = load i32*, i32** %3, align 8
  %201 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %201, i64 %203
  %205 = bitcast %struct.TYPE_6__** %204 to i8*
  %206 = call i64 @redisGetReply(i32* %200, i8* %205)
  %207 = load i64, i64* @REDIS_OK, align 8
  %208 = icmp eq i64 %206, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  %211 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %212 = load i32, i32* %5, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %211, i64 %213
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = icmp ne %struct.TYPE_6__* %215, null
  br i1 %216, label %217, label %227

217:                                              ; preds = %199
  %218 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %218, i64 %220
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %226 = icmp eq i64 %224, %225
  br label %227

227:                                              ; preds = %217, %199
  %228 = phi i1 [ false, %199 ], [ %226, %217 ]
  %229 = zext i1 %228 to i32
  %230 = call i32 @assert(i32 %229)
  br label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %5, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %5, align 4
  br label %195

234:                                              ; preds = %195
  %235 = call i64 (...) @usec()
  store i64 %235, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %236

236:                                              ; preds = %247, %234
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %250

240:                                              ; preds = %236
  %241 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %241, i64 %243
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %244, align 8
  %246 = call i32 @freeReplyObject(%struct.TYPE_6__* %245)
  br label %247

247:                                              ; preds = %240
  %248 = load i32, i32* %5, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %5, align 4
  br label %236

250:                                              ; preds = %236
  %251 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %252 = call i32 @free(%struct.TYPE_6__** %251)
  %253 = load i32, i32* %6, align 4
  %254 = load i64, i64* %8, align 8
  %255 = load i64, i64* %7, align 8
  %256 = sub nsw i64 %254, %255
  %257 = sitofp i64 %256 to double
  %258 = fdiv double %257, 1.000000e+06
  %259 = fptosi double %258 to i64
  %260 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %253, i64 %259)
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = mul i64 8, %262
  %264 = trunc i64 %263 to i32
  %265 = call %struct.TYPE_6__** @malloc(i32 %264)
  store %struct.TYPE_6__** %265, %struct.TYPE_6__*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %266

266:                                              ; preds = %273, %250
  %267 = load i32, i32* %5, align 4
  %268 = load i32, i32* %6, align 4
  %269 = icmp slt i32 %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %266
  %271 = load i32*, i32** %3, align 8
  %272 = call i32 @redisAppendCommand(i32* %271, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %273

273:                                              ; preds = %270
  %274 = load i32, i32* %5, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %5, align 4
  br label %266

276:                                              ; preds = %266
  %277 = call i64 (...) @usec()
  store i64 %277, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %278

278:                                              ; preds = %333, %276
  %279 = load i32, i32* %5, align 4
  %280 = load i32, i32* %6, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %336

282:                                              ; preds = %278
  %283 = load i32*, i32** %3, align 8
  %284 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %285 = load i32, i32* %5, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %284, i64 %286
  %288 = bitcast %struct.TYPE_6__** %287 to i8*
  %289 = call i64 @redisGetReply(i32* %283, i8* %288)
  %290 = load i64, i64* @REDIS_OK, align 8
  %291 = icmp eq i64 %289, %290
  %292 = zext i1 %291 to i32
  %293 = call i32 @assert(i32 %292)
  %294 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %294, i64 %296
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %297, align 8
  %299 = icmp ne %struct.TYPE_6__* %298, null
  br i1 %299, label %300, label %310

300:                                              ; preds = %282
  %301 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %302 = load i32, i32* %5, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %301, i64 %303
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %309 = icmp eq i64 %307, %308
  br label %310

310:                                              ; preds = %300, %282
  %311 = phi i1 [ false, %282 ], [ %309, %300 ]
  %312 = zext i1 %311 to i32
  %313 = call i32 @assert(i32 %312)
  %314 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %315 = load i32, i32* %5, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %314, i64 %316
  %318 = load %struct.TYPE_6__*, %struct.TYPE_6__** %317, align 8
  %319 = icmp ne %struct.TYPE_6__* %318, null
  br i1 %319, label %320, label %329

320:                                              ; preds = %310
  %321 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %322 = load i32, i32* %5, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %321, i64 %323
  %325 = load %struct.TYPE_6__*, %struct.TYPE_6__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = icmp eq i32 %327, 500
  br label %329

329:                                              ; preds = %320, %310
  %330 = phi i1 [ false, %310 ], [ %328, %320 ]
  %331 = zext i1 %330 to i32
  %332 = call i32 @assert(i32 %331)
  br label %333

333:                                              ; preds = %329
  %334 = load i32, i32* %5, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %5, align 4
  br label %278

336:                                              ; preds = %278
  %337 = call i64 (...) @usec()
  store i64 %337, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %338

338:                                              ; preds = %349, %336
  %339 = load i32, i32* %5, align 4
  %340 = load i32, i32* %6, align 4
  %341 = icmp slt i32 %339, %340
  br i1 %341, label %342, label %352

342:                                              ; preds = %338
  %343 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %344 = load i32, i32* %5, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %343, i64 %345
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %346, align 8
  %348 = call i32 @freeReplyObject(%struct.TYPE_6__* %347)
  br label %349

349:                                              ; preds = %342
  %350 = load i32, i32* %5, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %5, align 4
  br label %338

352:                                              ; preds = %338
  %353 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %354 = call i32 @free(%struct.TYPE_6__** %353)
  %355 = load i32, i32* %6, align 4
  %356 = load i64, i64* %8, align 8
  %357 = load i64, i64* %7, align 8
  %358 = sub nsw i64 %356, %357
  %359 = sitofp i64 %358 to double
  %360 = fdiv double %359, 1.000000e+06
  %361 = fptosi double %360 to i64
  %362 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 %355, i64 %361)
  %363 = load i32*, i32** %3, align 8
  %364 = call i32 @disconnect(i32* %363, i32 0)
  ret void
}

declare dso_local i32* @connect(i32) #1

declare dso_local i32 @test(i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @redisCommand(i32*, i8*) #1

declare dso_local %struct.TYPE_6__** @malloc(i32) #1

declare dso_local i64 @usec(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__**) #1

declare dso_local i32 @printf(i8*, i32, i64) #1

declare dso_local i32 @redisAppendCommand(i32*, i8*) #1

declare dso_local i64 @redisGetReply(i32*, i8*) #1

declare dso_local i32 @disconnect(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
