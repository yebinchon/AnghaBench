; ModuleID = '/home/carl/AnghaBench/hiredis/extr_test.c_test_throughput.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_test.c_test_throughput.c"
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
@.str.6 = private unnamed_addr constant [18 x i8] c"INCRBY incrkey %d\00", align 1
@REDIS_REPLY_INTEGER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"\09(%dx INCRBY: %.3fs)\0A\00", align 1
@REDIS_OK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"\09(%dx PING (pipelined): %.3fs)\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"\09(%dx LRANGE with 500 elements (pipelined): %.3fs)\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"\09(%dx INCRBY (pipelined): %.3fs)\0A\00", align 1
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
  %12 = call i32* @do_connect(i32 %11)
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
  %19 = call %struct.TYPE_6__* (i32*, i8*, ...) @redisCommand(i32* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
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
  %37 = call %struct.TYPE_6__* (i32*, i8*, ...) @redisCommand(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
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
  %104 = call %struct.TYPE_6__* (i32*, i8*, ...) @redisCommand(i32* %103, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
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
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 8, %179
  %181 = trunc i64 %180 to i32
  %182 = call %struct.TYPE_6__** @malloc(i32 %181)
  store %struct.TYPE_6__** %182, %struct.TYPE_6__*** %4, align 8
  %183 = call i64 (...) @usec()
  store i64 %183, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %184

184:                                              ; preds = %215, %167
  %185 = load i32, i32* %5, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %218

188:                                              ; preds = %184
  %189 = load i32*, i32** %3, align 8
  %190 = call %struct.TYPE_6__* (i32*, i8*, ...) @redisCommand(i32* %189, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 1000000)
  %191 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %191, i64 %193
  store %struct.TYPE_6__* %190, %struct.TYPE_6__** %194, align 8
  %195 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %196 = load i32, i32* %5, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %195, i64 %197
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = icmp ne %struct.TYPE_6__* %199, null
  br i1 %200, label %201, label %211

201:                                              ; preds = %188
  %202 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %202, i64 %204
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %210 = icmp eq i64 %208, %209
  br label %211

211:                                              ; preds = %201, %188
  %212 = phi i1 [ false, %188 ], [ %210, %201 ]
  %213 = zext i1 %212 to i32
  %214 = call i32 @assert(i32 %213)
  br label %215

215:                                              ; preds = %211
  %216 = load i32, i32* %5, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %5, align 4
  br label %184

218:                                              ; preds = %184
  %219 = call i64 (...) @usec()
  store i64 %219, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %220

220:                                              ; preds = %231, %218
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* %6, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %220
  %225 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %225, i64 %227
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %228, align 8
  %230 = call i32 @freeReplyObject(%struct.TYPE_6__* %229)
  br label %231

231:                                              ; preds = %224
  %232 = load i32, i32* %5, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %5, align 4
  br label %220

234:                                              ; preds = %220
  %235 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %236 = call i32 @free(%struct.TYPE_6__** %235)
  %237 = load i32, i32* %6, align 4
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* %7, align 8
  %240 = sub nsw i64 %238, %239
  %241 = sitofp i64 %240 to double
  %242 = fdiv double %241, 1.000000e+06
  %243 = fptosi double %242 to i64
  %244 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %237, i64 %243)
  store i32 10000, i32* %6, align 4
  %245 = load i32, i32* %6, align 4
  %246 = sext i32 %245 to i64
  %247 = mul i64 8, %246
  %248 = trunc i64 %247 to i32
  %249 = call %struct.TYPE_6__** @malloc(i32 %248)
  store %struct.TYPE_6__** %249, %struct.TYPE_6__*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %250

250:                                              ; preds = %257, %234
  %251 = load i32, i32* %5, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = load i32*, i32** %3, align 8
  %256 = call i32 (i32*, i8*, ...) @redisAppendCommand(i32* %255, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %5, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %5, align 4
  br label %250

260:                                              ; preds = %250
  %261 = call i64 (...) @usec()
  store i64 %261, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %262

262:                                              ; preds = %298, %260
  %263 = load i32, i32* %5, align 4
  %264 = load i32, i32* %6, align 4
  %265 = icmp slt i32 %263, %264
  br i1 %265, label %266, label %301

266:                                              ; preds = %262
  %267 = load i32*, i32** %3, align 8
  %268 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %269 = load i32, i32* %5, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %268, i64 %270
  %272 = bitcast %struct.TYPE_6__** %271 to i8*
  %273 = call i64 @redisGetReply(i32* %267, i8* %272)
  %274 = load i64, i64* @REDIS_OK, align 8
  %275 = icmp eq i64 %273, %274
  %276 = zext i1 %275 to i32
  %277 = call i32 @assert(i32 %276)
  %278 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %279 = load i32, i32* %5, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %278, i64 %280
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = icmp ne %struct.TYPE_6__* %282, null
  br i1 %283, label %284, label %294

284:                                              ; preds = %266
  %285 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %286 = load i32, i32* %5, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %285, i64 %287
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @REDIS_REPLY_STATUS, align 8
  %293 = icmp eq i64 %291, %292
  br label %294

294:                                              ; preds = %284, %266
  %295 = phi i1 [ false, %266 ], [ %293, %284 ]
  %296 = zext i1 %295 to i32
  %297 = call i32 @assert(i32 %296)
  br label %298

298:                                              ; preds = %294
  %299 = load i32, i32* %5, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %5, align 4
  br label %262

301:                                              ; preds = %262
  %302 = call i64 (...) @usec()
  store i64 %302, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %303

303:                                              ; preds = %314, %301
  %304 = load i32, i32* %5, align 4
  %305 = load i32, i32* %6, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %317

307:                                              ; preds = %303
  %308 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %309 = load i32, i32* %5, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %308, i64 %310
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = call i32 @freeReplyObject(%struct.TYPE_6__* %312)
  br label %314

314:                                              ; preds = %307
  %315 = load i32, i32* %5, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %5, align 4
  br label %303

317:                                              ; preds = %303
  %318 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %319 = call i32 @free(%struct.TYPE_6__** %318)
  %320 = load i32, i32* %6, align 4
  %321 = load i64, i64* %8, align 8
  %322 = load i64, i64* %7, align 8
  %323 = sub nsw i64 %321, %322
  %324 = sitofp i64 %323 to double
  %325 = fdiv double %324, 1.000000e+06
  %326 = fptosi double %325 to i64
  %327 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %320, i64 %326)
  %328 = load i32, i32* %6, align 4
  %329 = sext i32 %328 to i64
  %330 = mul i64 8, %329
  %331 = trunc i64 %330 to i32
  %332 = call %struct.TYPE_6__** @malloc(i32 %331)
  store %struct.TYPE_6__** %332, %struct.TYPE_6__*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %333

333:                                              ; preds = %340, %317
  %334 = load i32, i32* %5, align 4
  %335 = load i32, i32* %6, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %343

337:                                              ; preds = %333
  %338 = load i32*, i32** %3, align 8
  %339 = call i32 (i32*, i8*, ...) @redisAppendCommand(i32* %338, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %340

340:                                              ; preds = %337
  %341 = load i32, i32* %5, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %5, align 4
  br label %333

343:                                              ; preds = %333
  %344 = call i64 (...) @usec()
  store i64 %344, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %345

345:                                              ; preds = %400, %343
  %346 = load i32, i32* %5, align 4
  %347 = load i32, i32* %6, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %403

349:                                              ; preds = %345
  %350 = load i32*, i32** %3, align 8
  %351 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %352 = load i32, i32* %5, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %351, i64 %353
  %355 = bitcast %struct.TYPE_6__** %354 to i8*
  %356 = call i64 @redisGetReply(i32* %350, i8* %355)
  %357 = load i64, i64* @REDIS_OK, align 8
  %358 = icmp eq i64 %356, %357
  %359 = zext i1 %358 to i32
  %360 = call i32 @assert(i32 %359)
  %361 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %362 = load i32, i32* %5, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %361, i64 %363
  %365 = load %struct.TYPE_6__*, %struct.TYPE_6__** %364, align 8
  %366 = icmp ne %struct.TYPE_6__* %365, null
  br i1 %366, label %367, label %377

367:                                              ; preds = %349
  %368 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %369 = load i32, i32* %5, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %368, i64 %370
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = load i64, i64* @REDIS_REPLY_ARRAY, align 8
  %376 = icmp eq i64 %374, %375
  br label %377

377:                                              ; preds = %367, %349
  %378 = phi i1 [ false, %349 ], [ %376, %367 ]
  %379 = zext i1 %378 to i32
  %380 = call i32 @assert(i32 %379)
  %381 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %382 = load i32, i32* %5, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %381, i64 %383
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %384, align 8
  %386 = icmp ne %struct.TYPE_6__* %385, null
  br i1 %386, label %387, label %396

387:                                              ; preds = %377
  %388 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %389 = load i32, i32* %5, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %388, i64 %390
  %392 = load %struct.TYPE_6__*, %struct.TYPE_6__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %392, i32 0, i32 1
  %394 = load i32, i32* %393, align 8
  %395 = icmp eq i32 %394, 500
  br label %396

396:                                              ; preds = %387, %377
  %397 = phi i1 [ false, %377 ], [ %395, %387 ]
  %398 = zext i1 %397 to i32
  %399 = call i32 @assert(i32 %398)
  br label %400

400:                                              ; preds = %396
  %401 = load i32, i32* %5, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %5, align 4
  br label %345

403:                                              ; preds = %345
  %404 = call i64 (...) @usec()
  store i64 %404, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %405

405:                                              ; preds = %416, %403
  %406 = load i32, i32* %5, align 4
  %407 = load i32, i32* %6, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %419

409:                                              ; preds = %405
  %410 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %411 = load i32, i32* %5, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %410, i64 %412
  %414 = load %struct.TYPE_6__*, %struct.TYPE_6__** %413, align 8
  %415 = call i32 @freeReplyObject(%struct.TYPE_6__* %414)
  br label %416

416:                                              ; preds = %409
  %417 = load i32, i32* %5, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %5, align 4
  br label %405

419:                                              ; preds = %405
  %420 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %421 = call i32 @free(%struct.TYPE_6__** %420)
  %422 = load i32, i32* %6, align 4
  %423 = load i64, i64* %8, align 8
  %424 = load i64, i64* %7, align 8
  %425 = sub nsw i64 %423, %424
  %426 = sitofp i64 %425 to double
  %427 = fdiv double %426, 1.000000e+06
  %428 = fptosi double %427 to i64
  %429 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i32 %422, i64 %428)
  %430 = load i32, i32* %6, align 4
  %431 = sext i32 %430 to i64
  %432 = mul i64 8, %431
  %433 = trunc i64 %432 to i32
  %434 = call %struct.TYPE_6__** @malloc(i32 %433)
  store %struct.TYPE_6__** %434, %struct.TYPE_6__*** %4, align 8
  store i32 0, i32* %5, align 4
  br label %435

435:                                              ; preds = %442, %419
  %436 = load i32, i32* %5, align 4
  %437 = load i32, i32* %6, align 4
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %439, label %445

439:                                              ; preds = %435
  %440 = load i32*, i32** %3, align 8
  %441 = call i32 (i32*, i8*, ...) @redisAppendCommand(i32* %440, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 1000000)
  br label %442

442:                                              ; preds = %439
  %443 = load i32, i32* %5, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %5, align 4
  br label %435

445:                                              ; preds = %435
  %446 = call i64 (...) @usec()
  store i64 %446, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %447

447:                                              ; preds = %483, %445
  %448 = load i32, i32* %5, align 4
  %449 = load i32, i32* %6, align 4
  %450 = icmp slt i32 %448, %449
  br i1 %450, label %451, label %486

451:                                              ; preds = %447
  %452 = load i32*, i32** %3, align 8
  %453 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %454 = load i32, i32* %5, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %453, i64 %455
  %457 = bitcast %struct.TYPE_6__** %456 to i8*
  %458 = call i64 @redisGetReply(i32* %452, i8* %457)
  %459 = load i64, i64* @REDIS_OK, align 8
  %460 = icmp eq i64 %458, %459
  %461 = zext i1 %460 to i32
  %462 = call i32 @assert(i32 %461)
  %463 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %464 = load i32, i32* %5, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %463, i64 %465
  %467 = load %struct.TYPE_6__*, %struct.TYPE_6__** %466, align 8
  %468 = icmp ne %struct.TYPE_6__* %467, null
  br i1 %468, label %469, label %479

469:                                              ; preds = %451
  %470 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %471 = load i32, i32* %5, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %470, i64 %472
  %474 = load %struct.TYPE_6__*, %struct.TYPE_6__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 0
  %476 = load i64, i64* %475, align 8
  %477 = load i64, i64* @REDIS_REPLY_INTEGER, align 8
  %478 = icmp eq i64 %476, %477
  br label %479

479:                                              ; preds = %469, %451
  %480 = phi i1 [ false, %451 ], [ %478, %469 ]
  %481 = zext i1 %480 to i32
  %482 = call i32 @assert(i32 %481)
  br label %483

483:                                              ; preds = %479
  %484 = load i32, i32* %5, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %5, align 4
  br label %447

486:                                              ; preds = %447
  %487 = call i64 (...) @usec()
  store i64 %487, i64* %8, align 8
  store i32 0, i32* %5, align 4
  br label %488

488:                                              ; preds = %499, %486
  %489 = load i32, i32* %5, align 4
  %490 = load i32, i32* %6, align 4
  %491 = icmp slt i32 %489, %490
  br i1 %491, label %492, label %502

492:                                              ; preds = %488
  %493 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %494 = load i32, i32* %5, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %493, i64 %495
  %497 = load %struct.TYPE_6__*, %struct.TYPE_6__** %496, align 8
  %498 = call i32 @freeReplyObject(%struct.TYPE_6__* %497)
  br label %499

499:                                              ; preds = %492
  %500 = load i32, i32* %5, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %5, align 4
  br label %488

502:                                              ; preds = %488
  %503 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %504 = call i32 @free(%struct.TYPE_6__** %503)
  %505 = load i32, i32* %6, align 4
  %506 = load i64, i64* %8, align 8
  %507 = load i64, i64* %7, align 8
  %508 = sub nsw i64 %506, %507
  %509 = sitofp i64 %508 to double
  %510 = fdiv double %509, 1.000000e+06
  %511 = fptosi double %510 to i64
  %512 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %505, i64 %511)
  %513 = load i32*, i32** %3, align 8
  %514 = call i32 @disconnect(i32* %513, i32 0)
  ret void
}

declare dso_local i32* @do_connect(i32) #1

declare dso_local i32 @test(i8*) #1

declare dso_local i32 @freeReplyObject(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @redisCommand(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_6__** @malloc(i32) #1

declare dso_local i64 @usec(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__**) #1

declare dso_local i32 @printf(i8*, i32, i64) #1

declare dso_local i32 @redisAppendCommand(i32*, i8*, ...) #1

declare dso_local i64 @redisGetReply(i32*, i8*) #1

declare dso_local i32 @disconnect(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
