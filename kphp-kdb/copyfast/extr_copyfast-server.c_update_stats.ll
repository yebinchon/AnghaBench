; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_update_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-server.c_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i64*, i64* }
%struct.TYPE_13__ = type { %union.engine_stats, %struct.TYPE_9__ }
%union.engine_stats = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64*, i64*, i64* }
%struct.TYPE_9__ = type { i32 }

@min_stats = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@max_stats = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@sum_stats = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@total = common dso_local global i64 0, align 8
@STATS_DOUBLE_NUM = common dso_local global i32 0, align 4
@nodes_num = common dso_local global i32 0, align 4
@nodes = common dso_local global %struct.TYPE_13__* null, align 8
@STATS_INT_NUM = common dso_local global i32 0, align 4
@STATS_LONG_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_stats(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.engine_stats*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = call i32 @memset(%struct.TYPE_12__* @min_stats, i32 127, i32 24)
  %9 = call i32 @memset(%struct.TYPE_12__* @max_stats, i32 128, i32 24)
  %10 = call i32 @memset(%struct.TYPE_12__* @sum_stats, i32 0, i32 24)
  store i64 0, i64* @total, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @STATS_DOUBLE_NUM, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %11
  %16 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @min_stats, i32 0, i32 0, i32 0), align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 undef, i32* %19, align 4
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @max_stats, i32 0, i32 0, i32 0), align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 undef, i32* %23, align 4
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sum_stats, i32 0, i32 0, i32 0), align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %11

31:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %302, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @nodes_num, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %305

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @nodes, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = ashr i32 %47, 32
  %49 = icmp eq i32 %40, %48
  br i1 %49, label %50, label %301

50:                                               ; preds = %39, %36
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** @nodes, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store %union.engine_stats* %55, %union.engine_stats** %6, align 8
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %131, %50
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @STATS_INT_NUM, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %134

60:                                               ; preds = %56
  %61 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @min_stats, i32 0, i32 0, i32 1), align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %67 = bitcast %union.engine_stats* %66 to %struct.TYPE_11__*
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %65, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %60
  %76 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %77 = bitcast %union.engine_stats* %76 to %struct.TYPE_11__*
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @min_stats, i32 0, i32 0, i32 1), align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %83, i64* %87, align 8
  br label %88

88:                                               ; preds = %75, %60
  %89 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @max_stats, i32 0, i32 0, i32 1), align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %95 = bitcast %union.engine_stats* %94 to %struct.TYPE_11__*
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %93, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %88
  %104 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %105 = bitcast %union.engine_stats* %104 to %struct.TYPE_11__*
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @max_stats, i32 0, i32 0, i32 1), align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %111, i64* %115, align 8
  br label %116

116:                                              ; preds = %103, %88
  %117 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %118 = bitcast %union.engine_stats* %117 to %struct.TYPE_11__*
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sum_stats, i32 0, i32 0, i32 1), align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %124
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  br label %56

134:                                              ; preds = %56
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %210, %134
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @STATS_LONG_NUM, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %213

139:                                              ; preds = %135
  %140 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @min_stats, i32 0, i32 0, i32 2), align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %146 = bitcast %union.engine_stats* %145 to %struct.TYPE_11__*
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %148, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = icmp sgt i64 %144, %152
  br i1 %153, label %154, label %167

154:                                              ; preds = %139
  %155 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %156 = bitcast %union.engine_stats* %155 to %struct.TYPE_11__*
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @min_stats, i32 0, i32 0, i32 2), align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  store i64 %162, i64* %166, align 8
  br label %167

167:                                              ; preds = %154, %139
  %168 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @max_stats, i32 0, i32 0, i32 2), align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %174 = bitcast %union.engine_stats* %173 to %struct.TYPE_11__*
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = icmp slt i64 %172, %180
  br i1 %181, label %182, label %195

182:                                              ; preds = %167
  %183 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %184 = bitcast %union.engine_stats* %183 to %struct.TYPE_11__*
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load i64*, i64** %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i64, i64* %186, i64 %188
  %190 = load i64, i64* %189, align 8
  %191 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @max_stats, i32 0, i32 0, i32 2), align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  store i64 %190, i64* %194, align 8
  br label %195

195:                                              ; preds = %182, %167
  %196 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %197 = bitcast %union.engine_stats* %196 to %struct.TYPE_11__*
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = load i64*, i64** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sum_stats, i32 0, i32 0, i32 2), align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, %203
  store i64 %209, i64* %207, align 8
  br label %210

210:                                              ; preds = %195
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  br label %135

213:                                              ; preds = %135
  store i32 0, i32* %7, align 4
  br label %214

214:                                              ; preds = %295, %213
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @STATS_DOUBLE_NUM, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %298

218:                                              ; preds = %214
  %219 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @min_stats, i32 0, i32 0, i32 0), align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = sext i32 %223 to i64
  %225 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %226 = bitcast %union.engine_stats* %225 to %struct.TYPE_11__*
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 2
  %228 = load i64*, i64** %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %224, %232
  br i1 %233, label %234, label %248

234:                                              ; preds = %218
  %235 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %236 = bitcast %union.engine_stats* %235 to %struct.TYPE_11__*
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = trunc i64 %242 to i32
  %244 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @min_stats, i32 0, i32 0, i32 0), align 8
  %245 = load i32, i32* %7, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32 %243, i32* %247, align 4
  br label %248

248:                                              ; preds = %234, %218
  %249 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @max_stats, i32 0, i32 0, i32 0), align 8
  %250 = load i32, i32* %7, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %256 = bitcast %union.engine_stats* %255 to %struct.TYPE_11__*
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 2
  %258 = load i64*, i64** %257, align 8
  %259 = load i32, i32* %7, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %258, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = icmp slt i64 %254, %262
  br i1 %263, label %264, label %278

264:                                              ; preds = %248
  %265 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %266 = bitcast %union.engine_stats* %265 to %struct.TYPE_11__*
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 2
  %268 = load i64*, i64** %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i64, i64* %268, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = trunc i64 %272 to i32
  %274 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @max_stats, i32 0, i32 0, i32 0), align 8
  %275 = load i32, i32* %7, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32 %273, i32* %277, align 4
  br label %278

278:                                              ; preds = %264, %248
  %279 = load %union.engine_stats*, %union.engine_stats** %6, align 8
  %280 = bitcast %union.engine_stats* %279 to %struct.TYPE_11__*
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 2
  %282 = load i64*, i64** %281, align 8
  %283 = load i32, i32* %7, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i64, i64* %282, i64 %284
  %286 = load i64, i64* %285, align 8
  %287 = load i32*, i32** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sum_stats, i32 0, i32 0, i32 0), align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %292, %286
  %294 = trunc i64 %293 to i32
  store i32 %294, i32* %290, align 4
  br label %295

295:                                              ; preds = %278
  %296 = load i32, i32* %7, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %7, align 4
  br label %214

298:                                              ; preds = %214
  %299 = load i64, i64* @total, align 8
  %300 = add nsw i64 %299, 1
  store i64 %300, i64* @total, align 8
  br label %301

301:                                              ; preds = %298, %39
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %5, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %5, align 4
  br label %32

305:                                              ; preds = %32
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
