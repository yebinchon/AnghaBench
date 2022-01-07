; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_do_forward.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy.c_do_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.conn_target = type { i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (...)*, i32* }
%struct.rpc_cluster = type { i32, %struct.rpc_cluster_bucket* }
%struct.rpc_cluster_bucket = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.rpc_cluster_bucket*)*, i32 (%struct.rpc_cluster_bucket*)*, i32 (%struct.rpc_cluster_bucket*)* }

@CQ = common dso_local global %struct.TYPE_11__* null, align 8
@TL_TRUE = common dso_local global i32 0, align 4
@TL_MAYBE_FALSE = common dso_local global i32 0, align 4
@TL_MAYBE_TRUE = common dso_local global i32 0, align 4
@TL_VECTOR = common dso_local global i32 0, align 4
@allocated_targets = common dso_local global i32 0, align 4
@Targets = common dso_local global %struct.conn_target* null, align 8
@CC = common dso_local global %struct.TYPE_12__* null, align 8
@RPC_FUN_PREFORWARD_CHECK = common dso_local global i64 0, align 8
@RPC_FUN_PREFORWARD_EDIT = common dso_local global i64 0, align 8
@RPC_FUN_PREFORWARD_VIEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_forward() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.rpc_cluster*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_cluster_bucket*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.conn_target*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = call i32 (...) @tl_fetch_lookup_int()
  store i32 %12, i32* %2, align 4
  %13 = load i32, i32* %2, align 4
  switch i32 %13, label %273 [
    i32 134, label %14
    i32 131, label %32
    i32 129, label %49
    i32 130, label %81
    i32 128, label %154
    i32 132, label %184
    i32 133, label %256
  ]

14:                                               ; preds = %0
  %15 = call i32 (...) @tl_fetch_int()
  %16 = call i32 (...) @tl_fetch_end()
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @tl_init_store(i32 %19, i32 %22, i32 %27)
  %29 = load i32, i32* @TL_TRUE, align 4
  %30 = call i32 @tl_store_int(i32 %29)
  %31 = call i32 (...) @tl_store_end()
  store i32 0, i32* %1, align 4
  br label %318

32:                                               ; preds = %0
  %33 = call i32 (...) @tl_fetch_int()
  %34 = call i32 (...) @tl_fetch_end()
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tl_init_store(i32 %37, i32 %40, i32 %45)
  %47 = call i32 (...) @tl_dump_clusters()
  %48 = call i32 (...) @tl_store_end()
  store i32 0, i32* %1, align 4
  br label %318

49:                                               ; preds = %0
  %50 = call i32 (...) @tl_fetch_int()
  %51 = call i64 (...) @tl_fetch_long()
  store i64 %51, i64* %3, align 8
  %52 = call i32 (...) @tl_fetch_end()
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @tl_init_store(i32 %55, i32 %58, i32 %63)
  %65 = load i64, i64* %3, align 8
  %66 = call %struct.rpc_cluster* @get_cluster_by_id(i64 %65)
  store %struct.rpc_cluster* %66, %struct.rpc_cluster** %4, align 8
  %67 = load %struct.rpc_cluster*, %struct.rpc_cluster** %4, align 8
  %68 = icmp ne %struct.rpc_cluster* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %49
  %70 = load i32, i32* @TL_MAYBE_FALSE, align 4
  %71 = call i32 @tl_store_int(i32 %70)
  br label %79

72:                                               ; preds = %49
  %73 = load i32, i32* @TL_MAYBE_TRUE, align 4
  %74 = call i32 @tl_store_int(i32 %73)
  %75 = load %struct.rpc_cluster*, %struct.rpc_cluster** %4, align 8
  %76 = getelementptr inbounds %struct.rpc_cluster, %struct.rpc_cluster* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @tl_store_int(i32 %77)
  br label %79

79:                                               ; preds = %72, %69
  %80 = call i32 (...) @tl_store_end()
  store i32 0, i32* %1, align 4
  br label %318

81:                                               ; preds = %0
  %82 = call i32 (...) @tl_fetch_int()
  %83 = call i64 (...) @tl_fetch_long()
  store i64 %83, i64* %3, align 8
  %84 = call i32 (...) @tl_fetch_end()
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @tl_init_store(i32 %87, i32 %90, i32 %95)
  %97 = load i64, i64* %3, align 8
  %98 = call %struct.rpc_cluster* @get_cluster_by_id(i64 %97)
  store %struct.rpc_cluster* %98, %struct.rpc_cluster** %4, align 8
  %99 = load %struct.rpc_cluster*, %struct.rpc_cluster** %4, align 8
  %100 = icmp ne %struct.rpc_cluster* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %81
  %102 = load i32, i32* @TL_MAYBE_FALSE, align 4
  %103 = call i32 @tl_store_int(i32 %102)
  br label %152

104:                                              ; preds = %81
  %105 = load i32, i32* @TL_MAYBE_TRUE, align 4
  %106 = call i32 @tl_store_int(i32 %105)
  %107 = load %struct.rpc_cluster*, %struct.rpc_cluster** %4, align 8
  %108 = getelementptr inbounds %struct.rpc_cluster, %struct.rpc_cluster* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @tl_store_int(i32 %109)
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %148, %104
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.rpc_cluster*, %struct.rpc_cluster** %4, align 8
  %114 = getelementptr inbounds %struct.rpc_cluster, %struct.rpc_cluster* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %151

117:                                              ; preds = %111
  %118 = load %struct.rpc_cluster*, %struct.rpc_cluster** %4, align 8
  %119 = getelementptr inbounds %struct.rpc_cluster, %struct.rpc_cluster* %118, i32 0, i32 1
  %120 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %120, i64 %122
  store %struct.rpc_cluster_bucket* %123, %struct.rpc_cluster_bucket** %6, align 8
  %124 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %6, align 8
  %125 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32 (%struct.rpc_cluster_bucket*)*, i32 (%struct.rpc_cluster_bucket*)** %127, align 8
  %129 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %6, align 8
  %130 = call i32 %128(%struct.rpc_cluster_bucket* %129)
  %131 = call i32 @tl_store_int(i32 %130)
  %132 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %6, align 8
  %133 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %132, i32 0, i32 0
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32 (%struct.rpc_cluster_bucket*)*, i32 (%struct.rpc_cluster_bucket*)** %135, align 8
  %137 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %6, align 8
  %138 = call i32 %136(%struct.rpc_cluster_bucket* %137)
  %139 = call i32 @tl_store_int(i32 %138)
  %140 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %6, align 8
  %141 = getelementptr inbounds %struct.rpc_cluster_bucket, %struct.rpc_cluster_bucket* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32 (%struct.rpc_cluster_bucket*)*, i32 (%struct.rpc_cluster_bucket*)** %143, align 8
  %145 = load %struct.rpc_cluster_bucket*, %struct.rpc_cluster_bucket** %6, align 8
  %146 = call i32 %144(%struct.rpc_cluster_bucket* %145)
  %147 = call i32 @tl_store_long(i32 %146)
  br label %148

148:                                              ; preds = %117
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %111

151:                                              ; preds = %111
  br label %152

152:                                              ; preds = %151, %101
  %153 = call i32 (...) @tl_store_end()
  store i32 0, i32* %1, align 4
  br label %318

154:                                              ; preds = %0
  %155 = call i32 (...) @tl_fetch_int()
  %156 = call i64 (...) @tl_fetch_long()
  store i64 %156, i64* %3, align 8
  %157 = call i32 (...) @tl_fetch_end()
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @tl_init_store(i32 %160, i32 %163, i32 %168)
  %170 = load i64, i64* %3, align 8
  %171 = call %struct.rpc_cluster* @get_cluster_by_id(i64 %170)
  store %struct.rpc_cluster* %171, %struct.rpc_cluster** %4, align 8
  %172 = load %struct.rpc_cluster*, %struct.rpc_cluster** %4, align 8
  %173 = icmp ne %struct.rpc_cluster* %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %154
  %175 = load i32, i32* @TL_MAYBE_FALSE, align 4
  %176 = call i32 @tl_store_int(i32 %175)
  br label %182

177:                                              ; preds = %154
  %178 = load i32, i32* @TL_MAYBE_TRUE, align 4
  %179 = call i32 @tl_store_int(i32 %178)
  %180 = load %struct.rpc_cluster*, %struct.rpc_cluster** %4, align 8
  %181 = call i32 @store_cluster_stats(%struct.rpc_cluster* %180)
  br label %182

182:                                              ; preds = %177, %174
  %183 = call i32 (...) @tl_store_end()
  store i32 0, i32* %1, align 4
  br label %318

184:                                              ; preds = %0
  %185 = call i32 (...) @tl_fetch_int()
  %186 = call i32 (...) @tl_fetch_end()
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @tl_init_store(i32 %189, i32 %192, i32 %197)
  %199 = load i32, i32* @TL_VECTOR, align 4
  %200 = call i32 @tl_store_int(i32 %199)
  %201 = call i32* @tl_store_get_ptr(i32 4)
  store i32* %201, i32** %7, align 8
  %202 = load i32*, i32** %7, align 8
  store i32 0, i32* %202, align 4
  store i32 0, i32* %8, align 4
  br label %203

203:                                              ; preds = %251, %184
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @allocated_targets, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %254

207:                                              ; preds = %203
  %208 = load %struct.conn_target*, %struct.conn_target** @Targets, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %208, i64 %210
  store %struct.conn_target* %211, %struct.conn_target** %9, align 8
  %212 = load %struct.conn_target*, %struct.conn_target** %9, align 8
  %213 = call i32 @assert(%struct.conn_target* %212)
  %214 = load %struct.conn_target*, %struct.conn_target** %9, align 8
  %215 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = icmp sgt i32 %216, 0
  br i1 %217, label %218, label %250

218:                                              ; preds = %207
  %219 = load %struct.conn_target*, %struct.conn_target** %9, align 8
  %220 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %250, label %223

223:                                              ; preds = %218
  %224 = load %struct.conn_target*, %struct.conn_target** %9, align 8
  %225 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %223
  %230 = load %struct.conn_target*, %struct.conn_target** %9, align 8
  %231 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %10, align 4
  %234 = load i32, i32* %10, align 4
  %235 = call i32 @ntohl(i32 %234)
  %236 = call i32 @tl_store_int(i32 %235)
  br label %242

237:                                              ; preds = %223
  %238 = load %struct.conn_target*, %struct.conn_target** %9, align 8
  %239 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @tl_store_int(i32 %240)
  br label %242

242:                                              ; preds = %237, %229
  %243 = load %struct.conn_target*, %struct.conn_target** %9, align 8
  %244 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @tl_store_int(i32 %245)
  %247 = load i32*, i32** %7, align 8
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %242, %218, %207
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %203

254:                                              ; preds = %203
  %255 = call i32 (...) @tl_store_end()
  store i32 0, i32* %1, align 4
  br label %318

256:                                              ; preds = %0
  %257 = call i32 (...) @tl_fetch_int()
  %258 = call i32 (...) @tl_fetch_end()
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** @CQ, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @tl_init_store(i32 %261, i32 %264, i32 %269)
  %271 = call i32 (...) @store_stats()
  %272 = call i32 (...) @tl_store_end()
  store i32 0, i32* %1, align 4
  br label %318

273:                                              ; preds = %0
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CC, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = load i64, i64* @RPC_FUN_PREFORWARD_CHECK, align 8
  %279 = getelementptr inbounds i32, i32* %277, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @RPC_FUN_START(i32 %280, i32 0)
  store i32 %281, i32* %11, align 4
  %282 = load i32, i32* %11, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %273
  %285 = load i32, i32* %11, align 4
  store i32 %285, i32* %1, align 4
  br label %318

286:                                              ; preds = %273
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CC, align 8
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = load i64, i64* @RPC_FUN_PREFORWARD_EDIT, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @RPC_FUN_START(i32 %293, i32 0)
  store i32 %294, i32* %11, align 4
  %295 = load i32, i32* %11, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %286
  %298 = load i32, i32* %11, align 4
  store i32 %298, i32* %1, align 4
  br label %318

299:                                              ; preds = %286
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CC, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = load i64, i64* @RPC_FUN_PREFORWARD_VIEW, align 8
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @RPC_FUN_START(i32 %306, i32 0)
  store i32 %307, i32* %11, align 4
  %308 = load i32, i32* %11, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %299
  %311 = load i32, i32* %11, align 4
  store i32 %311, i32* %1, align 4
  br label %318

312:                                              ; preds = %299
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** @CC, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %314, i32 0, i32 0
  %316 = load i32 (...)*, i32 (...)** %315, align 8
  %317 = call i32 (...) %316()
  store i32 %317, i32* %1, align 4
  br label %318

318:                                              ; preds = %312, %310, %297, %284, %256, %254, %182, %152, %79, %32, %14
  %319 = load i32, i32* %1, align 4
  ret i32 %319
}

declare dso_local i32 @tl_fetch_lookup_int(...) #1

declare dso_local i32 @tl_fetch_int(...) #1

declare dso_local i32 @tl_fetch_end(...) #1

declare dso_local i32 @tl_init_store(i32, i32, i32) #1

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @tl_store_end(...) #1

declare dso_local i32 @tl_dump_clusters(...) #1

declare dso_local i64 @tl_fetch_long(...) #1

declare dso_local %struct.rpc_cluster* @get_cluster_by_id(i64) #1

declare dso_local i32 @tl_store_long(i32) #1

declare dso_local i32 @store_cluster_stats(%struct.rpc_cluster*) #1

declare dso_local i32* @tl_store_get_ptr(i32) #1

declare dso_local i32 @assert(%struct.conn_target*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @store_stats(...) #1

declare dso_local i32 @RPC_FUN_START(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
