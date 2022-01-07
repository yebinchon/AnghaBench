; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_mod_rq_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_mod_rq_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { i32, i32, %struct.TYPE_2__, i8*, i8*, i32, i32, %struct.drbd_device* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.drbd_device = type { i32, i32 }
%struct.bio_and_error = type { i32 }
%struct.drbd_peer_device = type { i32 }

@RQ_COMPLETION_SUSP = common dso_local global i32 0, align 4
@RQ_LOCAL_PENDING = common dso_local global i32 0, align 4
@RQ_NET_PENDING = common dso_local global i32 0, align 4
@RQ_NET_QUEUED = common dso_local global i32 0, align 4
@RQ_EXP_BARR_ACK = common dso_local global i32 0, align 4
@RQ_NET_SENT = common dso_local global i32 0, align 4
@RQ_NET_DONE = common dso_local global i32 0, align 4
@RQ_LOCAL_ABORTED = common dso_local global i32 0, align 4
@drbd_req_destroy = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_request*, %struct.bio_and_error*, i32, i32)* @mod_rq_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mod_rq_state(%struct.drbd_request* %0, %struct.bio_and_error* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.drbd_request*, align 8
  %6 = alloca %struct.bio_and_error*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drbd_device*, align 8
  %10 = alloca %struct.drbd_peer_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drbd_request* %0, %struct.drbd_request** %5, align 8
  store %struct.bio_and_error* %1, %struct.bio_and_error** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %14 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %13, i32 0, i32 7
  %15 = load %struct.drbd_device*, %struct.drbd_device** %14, align 8
  store %struct.drbd_device* %15, %struct.drbd_device** %9, align 8
  %16 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %17 = call %struct.drbd_peer_device* @first_peer_device(%struct.drbd_device* %16)
  store %struct.drbd_peer_device* %17, %struct.drbd_peer_device** %10, align 8
  %18 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %19 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %22 = call i64 @drbd_suspended(%struct.drbd_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @RQ_COMPLETION_SUSP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @RQ_COMPLETION_SUSP, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %24, %4
  %36 = load i32, i32* %7, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %39 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %44 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %48 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %35
  br label %335

53:                                               ; preds = %35
  %54 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %55 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %54, i32 0, i32 1
  %56 = call i32 @kref_get(i32* %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @RQ_LOCAL_PENDING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @RQ_LOCAL_PENDING, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %68 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %67, i32 0, i32 6
  %69 = call i32 @atomic_inc(i32* %68)
  br label %70

70:                                               ; preds = %66, %61, %53
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @RQ_NET_PENDING, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @RQ_NET_PENDING, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %82 = call i32 @inc_ap_pending(%struct.drbd_device* %81)
  %83 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %84 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %83, i32 0, i32 6
  %85 = call i32 @atomic_inc(i32* %84)
  br label %86

86:                                               ; preds = %80, %75, %70
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @RQ_NET_QUEUED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @RQ_NET_QUEUED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %98 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %97, i32 0, i32 6
  %99 = call i32 @atomic_inc(i32* %98)
  %100 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %10, align 8
  %101 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %102 = call i32 @set_if_null_req_next(%struct.drbd_peer_device* %100, %struct.drbd_request* %101)
  br label %103

103:                                              ; preds = %96, %91, %86
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @RQ_EXP_BARR_ACK, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @RQ_EXP_BARR_ACK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %115 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %114, i32 0, i32 1
  %116 = call i32 @kref_get(i32* %115)
  br label %117

117:                                              ; preds = %113, %108, %103
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @RQ_NET_SENT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %156, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* @RQ_NET_SENT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %156

127:                                              ; preds = %122
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @RQ_NET_DONE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %144, label %132

132:                                              ; preds = %127
  %133 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %134 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = ashr i32 %136, 9
  %138 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %139 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %138, i32 0, i32 1
  %140 = call i32 @atomic_add(i32 %137, i32* %139)
  %141 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %10, align 8
  %142 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %143 = call i32 @set_if_null_req_not_net_done(%struct.drbd_peer_device* %141, %struct.drbd_request* %142)
  br label %144

144:                                              ; preds = %132, %127
  %145 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %146 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @RQ_NET_PENDING, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %10, align 8
  %153 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %154 = call i32 @set_if_null_req_ack_pending(%struct.drbd_peer_device* %152, %struct.drbd_request* %153)
  br label %155

155:                                              ; preds = %151, %144
  br label %156

156:                                              ; preds = %155, %122, %117
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @RQ_COMPLETION_SUSP, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @RQ_COMPLETION_SUSP, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %168 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %167, i32 0, i32 6
  %169 = call i32 @atomic_inc(i32* %168)
  br label %170

170:                                              ; preds = %166, %161, %156
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @RQ_COMPLETION_SUSP, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @RQ_COMPLETION_SUSP, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  br label %183

183:                                              ; preds = %180, %175, %170
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @RQ_LOCAL_ABORTED, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %203, label %188

188:                                              ; preds = %183
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @RQ_LOCAL_ABORTED, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %188
  %194 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %195 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %196 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @RQ_LOCAL_PENDING, align 4
  %199 = and i32 %197, %198
  %200 = call i32 @D_ASSERT(%struct.drbd_device* %194, i32 %199)
  %201 = load i32, i32* %12, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %12, align 4
  br label %203

203:                                              ; preds = %193, %188, %183
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @RQ_LOCAL_PENDING, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %232

208:                                              ; preds = %203
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @RQ_LOCAL_PENDING, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %232

213:                                              ; preds = %208
  %214 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %215 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @RQ_LOCAL_ABORTED, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %213
  %221 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %222 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %221, i32 0, i32 1
  %223 = load i32, i32* @drbd_req_destroy, align 4
  %224 = call i32 @kref_put(i32* %222, i32 %223)
  br label %228

225:                                              ; preds = %213
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %12, align 4
  br label %228

228:                                              ; preds = %225, %220
  %229 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %230 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %229, i32 0, i32 5
  %231 = call i32 @list_del_init(i32* %230)
  br label %232

232:                                              ; preds = %228, %208, %203
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* @RQ_NET_PENDING, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %253

237:                                              ; preds = %232
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* @RQ_NET_PENDING, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %253

242:                                              ; preds = %237
  %243 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %244 = call i32 @dec_ap_pending(%struct.drbd_device* %243)
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %12, align 4
  %247 = load i8*, i8** @jiffies, align 8
  %248 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %249 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %248, i32 0, i32 4
  store i8* %247, i8** %249, align 8
  %250 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %10, align 8
  %251 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %252 = call i32 @advance_conn_req_ack_pending(%struct.drbd_peer_device* %250, %struct.drbd_request* %251)
  br label %253

253:                                              ; preds = %242, %237, %232
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* @RQ_NET_QUEUED, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %269

258:                                              ; preds = %253
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* @RQ_NET_QUEUED, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %258
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %12, align 4
  %266 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %10, align 8
  %267 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %268 = call i32 @advance_conn_req_next(%struct.drbd_peer_device* %266, %struct.drbd_request* %267)
  br label %269

269:                                              ; preds = %263, %258, %253
  %270 = load i32, i32* %11, align 4
  %271 = load i32, i32* @RQ_NET_DONE, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %316, label %274

274:                                              ; preds = %269
  %275 = load i32, i32* %8, align 4
  %276 = load i32, i32* @RQ_NET_DONE, align 4
  %277 = and i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %316

279:                                              ; preds = %274
  %280 = load i32, i32* %11, align 4
  %281 = load i32, i32* @RQ_NET_SENT, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %279
  %285 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %286 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = ashr i32 %288, 9
  %290 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %291 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %290, i32 0, i32 1
  %292 = call i32 @atomic_sub(i32 %289, i32* %291)
  br label %293

293:                                              ; preds = %284, %279
  %294 = load i32, i32* %11, align 4
  %295 = load i32, i32* @RQ_EXP_BARR_ACK, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %293
  %299 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %300 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %299, i32 0, i32 1
  %301 = load i32, i32* @drbd_req_destroy, align 4
  %302 = call i32 @kref_put(i32* %300, i32 %301)
  br label %303

303:                                              ; preds = %298, %293
  %304 = load i8*, i8** @jiffies, align 8
  %305 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %306 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %305, i32 0, i32 3
  store i8* %304, i8** %306, align 8
  %307 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %10, align 8
  %308 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %309 = call i32 @advance_conn_req_next(%struct.drbd_peer_device* %307, %struct.drbd_request* %308)
  %310 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %10, align 8
  %311 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %312 = call i32 @advance_conn_req_ack_pending(%struct.drbd_peer_device* %310, %struct.drbd_request* %311)
  %313 = load %struct.drbd_peer_device*, %struct.drbd_peer_device** %10, align 8
  %314 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %315 = call i32 @advance_conn_req_not_net_done(%struct.drbd_peer_device* %313, %struct.drbd_request* %314)
  br label %316

316:                                              ; preds = %303, %274, %269
  %317 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %318 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %316
  %323 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  %324 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %323, i32 0, i32 0
  %325 = call i32 @wake_up(i32* %324)
  br label %326

326:                                              ; preds = %322, %316
  %327 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %328 = load %struct.bio_and_error*, %struct.bio_and_error** %6, align 8
  %329 = load i32, i32* %12, align 4
  %330 = call i32 @drbd_req_put_completion_ref(%struct.drbd_request* %327, %struct.bio_and_error* %328, i32 %329)
  %331 = load %struct.drbd_request*, %struct.drbd_request** %5, align 8
  %332 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %331, i32 0, i32 1
  %333 = load i32, i32* @drbd_req_destroy, align 4
  %334 = call i32 @kref_put(i32* %332, i32 %333)
  br label %335

335:                                              ; preds = %326, %52
  ret void
}

declare dso_local %struct.drbd_peer_device* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i64 @drbd_suspended(%struct.drbd_device*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @inc_ap_pending(%struct.drbd_device*) #1

declare dso_local i32 @set_if_null_req_next(%struct.drbd_peer_device*, %struct.drbd_request*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @set_if_null_req_not_net_done(%struct.drbd_peer_device*, %struct.drbd_request*) #1

declare dso_local i32 @set_if_null_req_ack_pending(%struct.drbd_peer_device*, %struct.drbd_request*) #1

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dec_ap_pending(%struct.drbd_device*) #1

declare dso_local i32 @advance_conn_req_ack_pending(%struct.drbd_peer_device*, %struct.drbd_request*) #1

declare dso_local i32 @advance_conn_req_next(%struct.drbd_peer_device*, %struct.drbd_request*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @advance_conn_req_not_net_done(%struct.drbd_peer_device*, %struct.drbd_request*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @drbd_req_put_completion_ref(%struct.drbd_request*, %struct.bio_and_error*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
