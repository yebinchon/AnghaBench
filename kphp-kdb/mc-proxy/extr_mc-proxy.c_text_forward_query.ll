; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_text_forward_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy.c_text_forward_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, %struct.conn_target** }
%struct.TYPE_4__ = type { i32, i32 }
%struct.conn_target = type { i32 }
%struct.connection = type { i32, i32, i32 }
%struct.conn_query = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CC = common dso_local global %struct.TYPE_6__* null, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"in text_forward_query(%s, %d, %d; %d %d %d)\0A\00", align 1
@diagonal_received_queries = common dso_local global i32 0, align 4
@MAX_USER_FRIENDS = common dso_local global i32 0, align 4
@CLUSTER_MODE_FIRSTINT = common dso_local global i32 0, align 4
@RR = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"Forwarded online friends list (key = %s) to bucket %d:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@text_forward_query.sm_buff = internal global [32 x i8] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [10 x i8] c" 0 0 %d\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"set \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@diagonal_forwarded_total = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @text_forward_query(i8* %0, i32 %1, i32 %2, i32* %3, %struct.connection* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.connection*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.connection*, align 8
  %21 = alloca %struct.conn_query*, align 8
  %22 = alloca %struct.conn_target*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.connection* %4, %struct.connection** %11, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  br label %36

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %35, %31
  %37 = phi i32 [ %34, %31 ], [ 1, %35 ]
  store i32 %37, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %38 = load i32, i32* @verbosity, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.connection*, %struct.connection** %11, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %45, i32 %46, i32 %49, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %40, %36
  %58 = load i32, i32* @diagonal_received_queries, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @diagonal_received_queries, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sle i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @MAX_USER_FRIENDS, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %76, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, 255
  %74 = load i32, i32* @CLUSTER_MODE_FIRSTINT, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %69, %66, %62, %57
  store i32 0, i32* %6, align 4
  br label %320

77:                                               ; preds = %69
  %78 = load i32*, i32** %10, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i8*, i8** %7, align 8
  %82 = icmp ne i8* %81, null
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i1 [ false, %77 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %106, %83
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %17, align 4
  %98 = sdiv i32 %96, %97
  %99 = load i32, i32* %13, align 4
  %100 = srem i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = load i64*, i64** @RR, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  store i64 %101, i64* %105, align 8
  br label %106

106:                                              ; preds = %91
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %87

109:                                              ; preds = %87
  %110 = load %struct.connection*, %struct.connection** %11, align 8
  %111 = getelementptr inbounds %struct.connection, %struct.connection* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 7
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i32 %112, i32* %116, align 4
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %118, 1
  %120 = call i32 @ursort(i32* %117, i32 0, i32 %119)
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64*, i64** @RR, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  store i64 %122, i64* %126, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %12, align 4
  br label %127

127:                                              ; preds = %282, %109
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %285

131:                                              ; preds = %127
  %132 = load i64*, i64** @RR, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = load i64*, i64** @RR, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sub nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %136, %142
  br i1 %143, label %144, label %281

144:                                              ; preds = %131
  %145 = load i64*, i64** @RR, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp uge i64 %149, 0
  br i1 %150, label %151, label %279

151:                                              ; preds = %144
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %14, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 %154, i32* %159, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 9
  %162 = load %struct.conn_target**, %struct.conn_target*** %161, align 8
  %163 = load i64*, i64** @RR, align 8
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.conn_target*, %struct.conn_target** %162, i64 %167
  %169 = load %struct.conn_target*, %struct.conn_target** %168, align 8
  store %struct.conn_target* %169, %struct.conn_target** %22, align 8
  %170 = load %struct.conn_target*, %struct.conn_target** %22, align 8
  %171 = call %struct.connection* @get_target_connection(%struct.conn_target* %170)
  store %struct.connection* %171, %struct.connection** %20, align 8
  %172 = load %struct.connection*, %struct.connection** %20, align 8
  %173 = icmp ne %struct.connection* %172, null
  br i1 %173, label %174, label %278

174:                                              ; preds = %151
  %175 = load %struct.connection*, %struct.connection** %20, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 7
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %177, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 8
  %182 = call %struct.conn_query* @create_query(%struct.connection* %175, %struct.TYPE_4__* %178, i32 %181)
  store %struct.conn_query* %182, %struct.conn_query** %21, align 8
  %183 = load %struct.connection*, %struct.connection** %11, align 8
  %184 = call %struct.TYPE_5__* @MCS_DATA(%struct.connection* %183)
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, 8192
  %188 = load %struct.conn_query*, %struct.conn_query** %21, align 8
  %189 = getelementptr inbounds %struct.conn_query, %struct.conn_query* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @verbosity, align 4
  %191 = icmp sgt i32 %190, 1
  br i1 %191, label %192, label %221

192:                                              ; preds = %174
  %193 = load i32, i32* @stderr, align 4
  %194 = load i8*, i8** %7, align 8
  %195 = load i64*, i64** @RR, align 8
  %196 = load i32, i32* %14, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i64, i64* %195, i64 %197
  %199 = load i64, i64* %198, align 8
  %200 = call i32 (i32, i8*, ...) @fprintf(i32 %193, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %194, i64 %199)
  %201 = load i32, i32* %14, align 4
  %202 = sub nsw i32 %201, 1
  store i32 %202, i32* %16, align 4
  br label %203

203:                                              ; preds = %215, %192
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %12, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %218

207:                                              ; preds = %203
  %208 = load i32, i32* @stderr, align 4
  %209 = load i32*, i32** %10, align 8
  %210 = load i32, i32* %16, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i32, i8*, ...) @fprintf(i32 %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %207
  %216 = load i32, i32* %16, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %16, align 4
  br label %203

218:                                              ; preds = %203
  %219 = load i32, i32* @stderr, align 4
  %220 = call i32 (i32, i8*, ...) @fprintf(i32 %219, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %174
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %14, align 4
  %224 = sub nsw i32 %222, %223
  %225 = add nsw i32 %224, 1
  %226 = mul nsw i32 %225, 4
  %227 = call i32 @sprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @text_forward_query.sm_buff, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %226)
  store i32 %227, i32* %23, align 4
  %228 = load %struct.connection*, %struct.connection** %20, align 8
  %229 = getelementptr inbounds %struct.connection, %struct.connection* %228, i32 0, i32 1
  %230 = call i32 (i32*, ...) @write_out(i32* %229, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %231 = load %struct.connection*, %struct.connection** %20, align 8
  %232 = getelementptr inbounds %struct.connection, %struct.connection* %231, i32 0, i32 1
  %233 = load i8*, i8** %7, align 8
  %234 = load i32, i32* %8, align 4
  %235 = call i32 (i32*, ...) @write_out(i32* %232, i8* %233, i32 %234)
  %236 = load %struct.connection*, %struct.connection** %20, align 8
  %237 = getelementptr inbounds %struct.connection, %struct.connection* %236, i32 0, i32 1
  %238 = load i32, i32* %23, align 4
  %239 = call i32 (i32*, ...) @write_out(i32* %237, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @text_forward_query.sm_buff, i64 0, i64 0), i32 %238)
  %240 = load %struct.connection*, %struct.connection** %20, align 8
  %241 = getelementptr inbounds %struct.connection, %struct.connection* %240, i32 0, i32 1
  %242 = load i32*, i32** %10, align 8
  %243 = load i32, i32* %14, align 4
  %244 = sub nsw i32 %243, 1
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %242, i64 %245
  %247 = load i32, i32* %12, align 4
  %248 = load i32, i32* %14, align 4
  %249 = sub nsw i32 %247, %248
  %250 = add nsw i32 %249, 1
  %251 = mul nsw i32 %250, 4
  %252 = call i32 (i32*, ...) @write_out(i32* %241, i32* %246, i32 %251)
  %253 = load %struct.connection*, %struct.connection** %20, align 8
  %254 = getelementptr inbounds %struct.connection, %struct.connection* %253, i32 0, i32 1
  %255 = call i32 (i32*, ...) @write_out(i32* %254, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %256 = load i32, i32* %18, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %18, align 4
  %258 = load i32, i32* %8, align 4
  %259 = add nsw i32 4, %258
  %260 = load i32, i32* %23, align 4
  %261 = add nsw i32 %259, %260
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* %14, align 4
  %264 = sub nsw i32 %262, %263
  %265 = add nsw i32 %264, 1
  %266 = mul nsw i32 %265, 4
  %267 = add nsw i32 %261, %266
  %268 = add nsw i32 %267, 2
  %269 = load i32, i32* %19, align 4
  %270 = add nsw i32 %269, %268
  store i32 %270, i32* %19, align 4
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %14, align 4
  %273 = sub nsw i32 %271, %272
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, %273
  store i32 %275, i32* %15, align 4
  %276 = load %struct.connection*, %struct.connection** %20, align 8
  %277 = call i32 @flush_output(%struct.connection* %276)
  br label %278

278:                                              ; preds = %221, %151
  br label %279

279:                                              ; preds = %278, %144
  %280 = load i32, i32* %12, align 4
  store i32 %280, i32* %14, align 4
  br label %281

281:                                              ; preds = %279, %131
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %12, align 4
  br label %127

285:                                              ; preds = %127
  %286 = load i32, i32* %15, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %318

288:                                              ; preds = %285
  %289 = load i32, i32* %18, align 4
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = add nsw i32 %292, %289
  store i32 %293, i32* %291, align 4
  %294 = load i32, i32* %19, align 4
  %295 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = add nsw i32 %297, %294
  store i32 %298, i32* %296, align 8
  %299 = load i32, i32* %18, align 4
  %300 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 5
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, %299
  store i32 %303, i32* %301, align 4
  %304 = load i32, i32* %19, align 4
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 6
  %307 = load i32, i32* %306, align 8
  %308 = add nsw i32 %307, %304
  store i32 %308, i32* %306, align 8
  %309 = load i32, i32* %15, align 4
  %310 = load i32, i32* @diagonal_forwarded_total, align 4
  %311 = add nsw i32 %310, %309
  store i32 %311, i32* @diagonal_forwarded_total, align 4
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** @CC, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 7
  %314 = load %struct.TYPE_4__*, %struct.TYPE_4__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %288, %285
  %319 = load i32, i32* %15, align 4
  store i32 %319, i32* %6, align 4
  br label %320

320:                                              ; preds = %318, %76
  %321 = load i32, i32* %6, align 4
  ret i32 %321
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ursort(i32*, i32, i32) #1

declare dso_local %struct.connection* @get_target_connection(%struct.conn_target*) #1

declare dso_local %struct.conn_query* @create_query(%struct.connection*, %struct.TYPE_4__*, i32) #1

declare dso_local %struct.TYPE_5__* @MCS_DATA(%struct.connection*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @write_out(i32*, ...) #1

declare dso_local i32 @flush_output(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
