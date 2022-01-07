; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.bio = type { i32 }
%struct.blk_mq_alloc_data = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.request = type { %struct.TYPE_7__*, i32 }
%struct.blk_plug = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@REQ_NOWAIT = common dso_local global i32 0, align 4
@BLK_MAX_REQUEST_COUNT = common dso_local global i32 0, align 4
@BLK_PLUG_FLUSH_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @blk_mq_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_mq_make_request(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.blk_mq_alloc_data, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca %struct.blk_plug*, align 8
  %11 = alloca %struct.request*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @op_is_sync(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @op_is_flush(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = bitcast %struct.blk_mq_alloc_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 24, i1 false)
  store %struct.request* null, %struct.request** %11, align 8
  %25 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %26 = call i32 @blk_queue_bounce(%struct.request_queue* %25, %struct.bio** %5)
  %27 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %28 = call i32 @__blk_queue_split(%struct.request_queue* %27, %struct.bio** %5, i32* %12)
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = call i32 @bio_integrity_prep(%struct.bio* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %255

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %39 = call i32 @blk_queue_nomerges(%struct.request_queue* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %43 = load %struct.bio*, %struct.bio** %5, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i64 @blk_attempt_plug_merge(%struct.request_queue* %42, %struct.bio* %43, i32 %44, %struct.request** %11)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %48, i32* %3, align 4
  br label %255

49:                                               ; preds = %41, %37, %34
  %50 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %51 = load %struct.bio*, %struct.bio** %5, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @blk_mq_sched_bio_merge(%struct.request_queue* %50, %struct.bio* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %56, i32* %3, align 4
  br label %255

57:                                               ; preds = %49
  %58 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %59 = load %struct.bio*, %struct.bio** %5, align 8
  %60 = call i32 @rq_qos_throttle(%struct.request_queue* %58, %struct.bio* %59)
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = getelementptr inbounds %struct.bio, %struct.bio* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %8, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %66 = load %struct.bio*, %struct.bio** %5, align 8
  %67 = call %struct.request* @blk_mq_get_request(%struct.request_queue* %65, %struct.bio* %66, %struct.blk_mq_alloc_data* %8)
  store %struct.request* %67, %struct.request** %9, align 8
  %68 = load %struct.request*, %struct.request** %9, align 8
  %69 = icmp ne %struct.request* %68, null
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %57
  %75 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %76 = load %struct.bio*, %struct.bio** %5, align 8
  %77 = call i32 @rq_qos_cleanup(%struct.request_queue* %75, %struct.bio* %76)
  %78 = load %struct.bio*, %struct.bio** %5, align 8
  %79 = getelementptr inbounds %struct.bio, %struct.bio* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @REQ_NOWAIT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.bio*, %struct.bio** %5, align 8
  %86 = call i32 @bio_wouldblock_error(%struct.bio* %85)
  br label %87

87:                                               ; preds = %84, %74
  %88 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %88, i32* %3, align 4
  br label %255

89:                                               ; preds = %57
  %90 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %91 = load %struct.bio*, %struct.bio** %5, align 8
  %92 = load %struct.bio*, %struct.bio** %5, align 8
  %93 = getelementptr inbounds %struct.bio, %struct.bio* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @trace_block_getrq(%struct.request_queue* %90, %struct.bio* %91, i32 %94)
  %96 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %97 = load %struct.request*, %struct.request** %9, align 8
  %98 = load %struct.bio*, %struct.bio** %5, align 8
  %99 = call i32 @rq_qos_track(%struct.request_queue* %96, %struct.request* %97, %struct.bio* %98)
  %100 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %8, i32 0, i32 1
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = load %struct.request*, %struct.request** %9, align 8
  %103 = call i32 @request_to_qc_t(%struct.TYPE_7__* %101, %struct.request* %102)
  store i32 %103, i32* %13, align 4
  %104 = load %struct.request*, %struct.request** %9, align 8
  %105 = load %struct.bio*, %struct.bio** %5, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @blk_mq_bio_to_request(%struct.request* %104, %struct.bio* %105, i32 %106)
  %108 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %109 = load %struct.bio*, %struct.bio** %5, align 8
  %110 = call %struct.blk_plug* @blk_mq_plug(%struct.request_queue* %108, %struct.bio* %109)
  store %struct.blk_plug* %110, %struct.blk_plug** %10, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %89
  %115 = load %struct.request*, %struct.request** %9, align 8
  %116 = call i32 @blk_insert_flush(%struct.request* %115)
  %117 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %8, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = call i32 @blk_mq_run_hw_queue(%struct.TYPE_7__* %118, i32 1)
  br label %253

120:                                              ; preds = %89
  %121 = load %struct.blk_plug*, %struct.blk_plug** %10, align 8
  %122 = icmp ne %struct.blk_plug* %121, null
  br i1 %122, label %123, label %175

123:                                              ; preds = %120
  %124 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %125 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %139, label %128

128:                                              ; preds = %123
  %129 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %130 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %129, i32 0, i32 2
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %128
  %136 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %137 = call i32 @blk_queue_nonrot(%struct.request_queue* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %175, label %139

139:                                              ; preds = %135, %128, %123
  %140 = load %struct.blk_plug*, %struct.blk_plug** %10, align 8
  %141 = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %14, align 4
  store %struct.request* null, %struct.request** %15, align 8
  %143 = load i32, i32* %14, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %147 = call i32 @trace_block_plug(%struct.request_queue* %146)
  br label %154

148:                                              ; preds = %139
  %149 = load %struct.blk_plug*, %struct.blk_plug** %10, align 8
  %150 = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call %struct.request* @list_entry_rq(i32 %152)
  store %struct.request* %153, %struct.request** %15, align 8
  br label %154

154:                                              ; preds = %148, %145
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* @BLK_MAX_REQUEST_COUNT, align 4
  %157 = icmp uge i32 %155, %156
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = load %struct.request*, %struct.request** %15, align 8
  %160 = icmp ne %struct.request* %159, null
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load %struct.request*, %struct.request** %15, align 8
  %163 = call i64 @blk_rq_bytes(%struct.request* %162)
  %164 = load i64, i64* @BLK_PLUG_FLUSH_SIZE, align 8
  %165 = icmp sge i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %161, %154
  %167 = load %struct.blk_plug*, %struct.blk_plug** %10, align 8
  %168 = call i32 @blk_flush_plug_list(%struct.blk_plug* %167, i32 0)
  %169 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %170 = call i32 @trace_block_plug(%struct.request_queue* %169)
  br label %171

171:                                              ; preds = %166, %161, %158
  %172 = load %struct.blk_plug*, %struct.blk_plug** %10, align 8
  %173 = load %struct.request*, %struct.request** %9, align 8
  %174 = call i32 @blk_add_rq_to_plug(%struct.blk_plug* %172, %struct.request* %173)
  br label %252

175:                                              ; preds = %135, %120
  %176 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %177 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct.request*, %struct.request** %9, align 8
  %182 = call i32 @blk_mq_sched_insert_request(%struct.request* %181, i32 0, i32 1, i32 1)
  br label %251

183:                                              ; preds = %175
  %184 = load %struct.blk_plug*, %struct.blk_plug** %10, align 8
  %185 = icmp ne %struct.blk_plug* %184, null
  br i1 %185, label %186, label %227

186:                                              ; preds = %183
  %187 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %188 = call i32 @blk_queue_nomerges(%struct.request_queue* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %227, label %190

190:                                              ; preds = %186
  %191 = load %struct.blk_plug*, %struct.blk_plug** %10, align 8
  %192 = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %191, i32 0, i32 1
  %193 = call i64 @list_empty(%struct.TYPE_8__* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %190
  store %struct.request* null, %struct.request** %11, align 8
  br label %196

196:                                              ; preds = %195, %190
  %197 = load %struct.request*, %struct.request** %11, align 8
  %198 = icmp ne %struct.request* %197, null
  br i1 %198, label %199, label %207

199:                                              ; preds = %196
  %200 = load %struct.request*, %struct.request** %11, align 8
  %201 = getelementptr inbounds %struct.request, %struct.request* %200, i32 0, i32 1
  %202 = call i32 @list_del_init(i32* %201)
  %203 = load %struct.blk_plug*, %struct.blk_plug** %10, align 8
  %204 = getelementptr inbounds %struct.blk_plug, %struct.blk_plug* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = add i32 %205, -1
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %199, %196
  %208 = load %struct.blk_plug*, %struct.blk_plug** %10, align 8
  %209 = load %struct.request*, %struct.request** %9, align 8
  %210 = call i32 @blk_add_rq_to_plug(%struct.blk_plug* %208, %struct.request* %209)
  %211 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %212 = call i32 @trace_block_plug(%struct.request_queue* %211)
  %213 = load %struct.request*, %struct.request** %11, align 8
  %214 = icmp ne %struct.request* %213, null
  br i1 %214, label %215, label %226

215:                                              ; preds = %207
  %216 = load %struct.request*, %struct.request** %11, align 8
  %217 = getelementptr inbounds %struct.request, %struct.request* %216, i32 0, i32 0
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %8, i32 0, i32 1
  store %struct.TYPE_7__* %218, %struct.TYPE_7__** %219, align 8
  %220 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %221 = call i32 @trace_block_unplug(%struct.request_queue* %220, i32 1, i32 1)
  %222 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %8, i32 0, i32 1
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = load %struct.request*, %struct.request** %11, align 8
  %225 = call i32 @blk_mq_try_issue_directly(%struct.TYPE_7__* %223, %struct.request* %224, i32* %13)
  br label %226

226:                                              ; preds = %215, %207
  br label %250

227:                                              ; preds = %186, %183
  %228 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %229 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %235

232:                                              ; preds = %227
  %233 = load i32, i32* %6, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %241, label %235

235:                                              ; preds = %232, %227
  %236 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %8, i32 0, i32 1
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %235, %232
  %242 = getelementptr inbounds %struct.blk_mq_alloc_data, %struct.blk_mq_alloc_data* %8, i32 0, i32 1
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = load %struct.request*, %struct.request** %9, align 8
  %245 = call i32 @blk_mq_try_issue_directly(%struct.TYPE_7__* %243, %struct.request* %244, i32* %13)
  br label %249

246:                                              ; preds = %235
  %247 = load %struct.request*, %struct.request** %9, align 8
  %248 = call i32 @blk_mq_sched_insert_request(%struct.request* %247, i32 0, i32 1, i32 1)
  br label %249

249:                                              ; preds = %246, %241
  br label %250

250:                                              ; preds = %249, %226
  br label %251

251:                                              ; preds = %250, %180
  br label %252

252:                                              ; preds = %251, %171
  br label %253

253:                                              ; preds = %252, %114
  %254 = load i32, i32* %13, align 4
  store i32 %254, i32* %3, align 4
  br label %255

255:                                              ; preds = %253, %87, %55, %47, %32
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @op_is_sync(i32) #1

declare dso_local i32 @op_is_flush(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @blk_queue_bounce(%struct.request_queue*, %struct.bio**) #1

declare dso_local i32 @__blk_queue_split(%struct.request_queue*, %struct.bio**, i32*) #1

declare dso_local i32 @bio_integrity_prep(%struct.bio*) #1

declare dso_local i32 @blk_queue_nomerges(%struct.request_queue*) #1

declare dso_local i64 @blk_attempt_plug_merge(%struct.request_queue*, %struct.bio*, i32, %struct.request**) #1

declare dso_local i64 @blk_mq_sched_bio_merge(%struct.request_queue*, %struct.bio*, i32) #1

declare dso_local i32 @rq_qos_throttle(%struct.request_queue*, %struct.bio*) #1

declare dso_local %struct.request* @blk_mq_get_request(%struct.request_queue*, %struct.bio*, %struct.blk_mq_alloc_data*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rq_qos_cleanup(%struct.request_queue*, %struct.bio*) #1

declare dso_local i32 @bio_wouldblock_error(%struct.bio*) #1

declare dso_local i32 @trace_block_getrq(%struct.request_queue*, %struct.bio*, i32) #1

declare dso_local i32 @rq_qos_track(%struct.request_queue*, %struct.request*, %struct.bio*) #1

declare dso_local i32 @request_to_qc_t(%struct.TYPE_7__*, %struct.request*) #1

declare dso_local i32 @blk_mq_bio_to_request(%struct.request*, %struct.bio*, i32) #1

declare dso_local %struct.blk_plug* @blk_mq_plug(%struct.request_queue*, %struct.bio*) #1

declare dso_local i32 @blk_insert_flush(%struct.request*) #1

declare dso_local i32 @blk_mq_run_hw_queue(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @blk_queue_nonrot(%struct.request_queue*) #1

declare dso_local i32 @trace_block_plug(%struct.request_queue*) #1

declare dso_local %struct.request* @list_entry_rq(i32) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @blk_flush_plug_list(%struct.blk_plug*, i32) #1

declare dso_local i32 @blk_add_rq_to_plug(%struct.blk_plug*, %struct.request*) #1

declare dso_local i32 @blk_mq_sched_insert_request(%struct.request*, i32, i32, i32) #1

declare dso_local i64 @list_empty(%struct.TYPE_8__*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @trace_block_unplug(%struct.request_queue*, i32, i32) #1

declare dso_local i32 @blk_mq_try_issue_directly(%struct.TYPE_7__*, %struct.request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
