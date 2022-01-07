; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_is_valid_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_is_valid_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.drbd_state = type { i64 }
%struct.net_conf = type { i32, i64*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@SS_SUCCESS = common dso_local global i32 0, align 4
@FP_DONT_CARE = common dso_local global i32 0, align 4
@R_PRIMARY = common dso_local global i64 0, align 8
@SS_TWO_PRIMARIES = common dso_local global i32 0, align 4
@SS_O_VOL_PEER_PRI = common dso_local global i32 0, align 4
@R_SECONDARY = common dso_local global i64 0, align 8
@SS_DEVICE_IN_USE = common dso_local global i32 0, align 4
@C_CONNECTED = common dso_local global i64 0, align 8
@D_UP_TO_DATE = common dso_local global i64 0, align 8
@SS_NO_UP_TO_DATE_DISK = common dso_local global i32 0, align 4
@FP_RESOURCE = common dso_local global i32 0, align 4
@D_UNKNOWN = common dso_local global i64 0, align 8
@SS_PRIMARY_NOP = common dso_local global i32 0, align 4
@D_INCONSISTENT = common dso_local global i64 0, align 8
@SS_NO_LOCAL_DISK = common dso_local global i32 0, align 4
@SS_NO_REMOTE_DISK = common dso_local global i32 0, align 4
@C_WF_BITMAP_S = common dso_local global i64 0, align 8
@C_SYNC_SOURCE = common dso_local global i64 0, align 8
@C_PAUSED_SYNC_S = common dso_local global i64 0, align 8
@D_OUTDATED = common dso_local global i64 0, align 8
@SS_CONNECTED_OUTDATES = common dso_local global i32 0, align 4
@C_VERIFY_S = common dso_local global i64 0, align 8
@C_VERIFY_T = common dso_local global i64 0, align 8
@SS_NO_VERIFY_ALG = common dso_local global i32 0, align 4
@SS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@C_STARTING_SYNC_S = common dso_local global i64 0, align 8
@C_STARTING_SYNC_T = common dso_local global i64 0, align 8
@SS_NEED_CONNECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drbd_device*, i64)* @is_valid_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_state(%struct.drbd_device* %0, i64 %1) #0 {
  %3 = alloca %union.drbd_state, align 8
  %4 = alloca %struct.drbd_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_conf*, align 8
  %8 = getelementptr inbounds %union.drbd_state, %union.drbd_state* %3, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  store %struct.drbd_device* %0, %struct.drbd_device** %4, align 8
  %9 = load i32, i32* @SS_SUCCESS, align 4
  store i32 %9, i32* %6, align 4
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load i32, i32* @FP_DONT_CARE, align 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %13 = call i64 @get_ldev(%struct.drbd_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %17 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net_conf* @rcu_dereference(i32 %20)
  %22 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %25 = call i32 @put_ldev(%struct.drbd_device* %24)
  br label %26

26:                                               ; preds = %15, %2
  %27 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %28 = call %struct.TYPE_5__* @first_peer_device(%struct.drbd_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.net_conf* @rcu_dereference(i32 %32)
  store %struct.net_conf* %33, %struct.net_conf** %7, align 8
  %34 = load %struct.net_conf*, %struct.net_conf** %7, align 8
  %35 = icmp ne %struct.net_conf* %34, null
  br i1 %35, label %36, label %66

36:                                               ; preds = %26
  %37 = load %struct.net_conf*, %struct.net_conf** %7, align 8
  %38 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %65, label %41

41:                                               ; preds = %36
  %42 = bitcast %union.drbd_state* %3 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @R_PRIMARY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = bitcast %union.drbd_state* %3 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @R_PRIMARY, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @SS_TWO_PRIMARIES, align 4
  store i32 %52, i32* %6, align 4
  br label %64

53:                                               ; preds = %46
  %54 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %55 = call %struct.TYPE_5__* @first_peer_device(%struct.drbd_device* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = call i64 @conn_highest_peer(%struct.TYPE_6__* %57)
  %59 = load i64, i64* @R_PRIMARY, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @SS_O_VOL_PEER_PRI, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %53
  br label %64

64:                                               ; preds = %63, %51
  br label %65

65:                                               ; preds = %64, %41, %36
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i32, i32* %6, align 4
  %68 = icmp ule i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %304

70:                                               ; preds = %66
  %71 = bitcast %union.drbd_state* %3 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @R_SECONDARY, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %77 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @SS_DEVICE_IN_USE, align 4
  store i32 %81, i32* %6, align 4
  br label %302

82:                                               ; preds = %75, %70
  %83 = bitcast %union.drbd_state* %3 to i64*
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @R_PRIMARY, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = bitcast %union.drbd_state* %3 to i64*
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @C_CONNECTED, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = bitcast %union.drbd_state* %3 to i64*
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @D_UP_TO_DATE, align 8
  %96 = icmp slt i64 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i32, i32* @SS_NO_UP_TO_DATE_DISK, align 4
  store i32 %98, i32* %6, align 4
  br label %301

99:                                               ; preds = %92, %87, %82
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @FP_RESOURCE, align 4
  %102 = icmp uge i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = bitcast %union.drbd_state* %3 to i64*
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @R_PRIMARY, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  %109 = bitcast %union.drbd_state* %3 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @C_CONNECTED, align 8
  %112 = icmp slt i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = bitcast %union.drbd_state* %3 to i64*
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @D_UNKNOWN, align 8
  %117 = icmp sge i64 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @SS_PRIMARY_NOP, align 4
  store i32 %119, i32* %6, align 4
  br label %300

120:                                              ; preds = %113, %108, %103, %99
  %121 = bitcast %union.drbd_state* %3 to i64*
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @R_PRIMARY, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %120
  %126 = bitcast %union.drbd_state* %3 to i64*
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @D_INCONSISTENT, align 8
  %129 = icmp sle i64 %127, %128
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = bitcast %union.drbd_state* %3 to i64*
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @D_INCONSISTENT, align 8
  %134 = icmp sle i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @SS_NO_UP_TO_DATE_DISK, align 4
  store i32 %136, i32* %6, align 4
  br label %299

137:                                              ; preds = %130, %125, %120
  %138 = bitcast %union.drbd_state* %3 to i64*
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @C_CONNECTED, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %137
  %143 = bitcast %union.drbd_state* %3 to i64*
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @D_INCONSISTENT, align 8
  %146 = icmp slt i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @SS_NO_LOCAL_DISK, align 4
  store i32 %148, i32* %6, align 4
  br label %298

149:                                              ; preds = %142, %137
  %150 = bitcast %union.drbd_state* %3 to i64*
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @C_CONNECTED, align 8
  %153 = icmp sgt i64 %151, %152
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = bitcast %union.drbd_state* %3 to i64*
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @D_INCONSISTENT, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = load i32, i32* @SS_NO_REMOTE_DISK, align 4
  store i32 %160, i32* %6, align 4
  br label %297

161:                                              ; preds = %154, %149
  %162 = bitcast %union.drbd_state* %3 to i64*
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @C_CONNECTED, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %166, label %178

166:                                              ; preds = %161
  %167 = bitcast %union.drbd_state* %3 to i64*
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @D_UP_TO_DATE, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %171, label %178

171:                                              ; preds = %166
  %172 = bitcast %union.drbd_state* %3 to i64*
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @D_UP_TO_DATE, align 8
  %175 = icmp slt i64 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @SS_NO_UP_TO_DATE_DISK, align 4
  store i32 %177, i32* %6, align 4
  br label %296

178:                                              ; preds = %171, %166, %161
  %179 = bitcast %union.drbd_state* %3 to i64*
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @C_CONNECTED, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %198, label %183

183:                                              ; preds = %178
  %184 = bitcast %union.drbd_state* %3 to i64*
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @C_WF_BITMAP_S, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %198, label %188

188:                                              ; preds = %183
  %189 = bitcast %union.drbd_state* %3 to i64*
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @C_SYNC_SOURCE, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = bitcast %union.drbd_state* %3 to i64*
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @C_PAUSED_SYNC_S, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %193, %188, %183, %178
  %199 = bitcast %union.drbd_state* %3 to i64*
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @D_OUTDATED, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @SS_CONNECTED_OUTDATES, align 4
  store i32 %204, i32* %6, align 4
  br label %295

205:                                              ; preds = %198, %193
  %206 = bitcast %union.drbd_state* %3 to i64*
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @C_VERIFY_S, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %215, label %210

210:                                              ; preds = %205
  %211 = bitcast %union.drbd_state* %3 to i64*
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @C_VERIFY_T, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %224

215:                                              ; preds = %210, %205
  %216 = load %struct.net_conf*, %struct.net_conf** %7, align 8
  %217 = getelementptr inbounds %struct.net_conf, %struct.net_conf* %216, i32 0, i32 1
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %215
  %223 = load i32, i32* @SS_NO_VERIFY_ALG, align 4
  store i32 %223, i32* %6, align 4
  br label %294

224:                                              ; preds = %215, %210
  %225 = bitcast %union.drbd_state* %3 to i64*
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @C_VERIFY_S, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %234, label %229

229:                                              ; preds = %224
  %230 = bitcast %union.drbd_state* %3 to i64*
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @C_VERIFY_T, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %244

234:                                              ; preds = %229, %224
  %235 = load %struct.drbd_device*, %struct.drbd_device** %4, align 8
  %236 = call %struct.TYPE_5__* @first_peer_device(%struct.drbd_device* %235)
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp slt i32 %240, 88
  br i1 %241, label %242, label %244

242:                                              ; preds = %234
  %243 = load i32, i32* @SS_NOT_SUPPORTED, align 4
  store i32 %243, i32* %6, align 4
  br label %293

244:                                              ; preds = %234, %229
  %245 = bitcast %union.drbd_state* %3 to i64*
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @R_PRIMARY, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %244
  %250 = bitcast %union.drbd_state* %3 to i64*
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @D_UP_TO_DATE, align 8
  %253 = icmp slt i64 %251, %252
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = bitcast %union.drbd_state* %3 to i64*
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @D_UP_TO_DATE, align 8
  %258 = icmp slt i64 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %254
  %260 = load i32, i32* @SS_NO_UP_TO_DATE_DISK, align 4
  store i32 %260, i32* %6, align 4
  br label %292

261:                                              ; preds = %254, %249, %244
  %262 = bitcast %union.drbd_state* %3 to i64*
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @C_STARTING_SYNC_S, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %271, label %266

266:                                              ; preds = %261
  %267 = bitcast %union.drbd_state* %3 to i64*
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @C_STARTING_SYNC_T, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %266, %261
  %272 = bitcast %union.drbd_state* %3 to i64*
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @D_UNKNOWN, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i32, i32* @SS_NEED_CONNECTION, align 4
  store i32 %277, i32* %6, align 4
  br label %291

278:                                              ; preds = %271, %266
  %279 = bitcast %union.drbd_state* %3 to i64*
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @C_CONNECTED, align 8
  %282 = icmp sge i64 %280, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %278
  %284 = bitcast %union.drbd_state* %3 to i64*
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @D_UNKNOWN, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %283
  %289 = load i32, i32* @SS_CONNECTED_OUTDATES, align 4
  store i32 %289, i32* %6, align 4
  br label %290

290:                                              ; preds = %288, %283, %278
  br label %291

291:                                              ; preds = %290, %276
  br label %292

292:                                              ; preds = %291, %259
  br label %293

293:                                              ; preds = %292, %242
  br label %294

294:                                              ; preds = %293, %222
  br label %295

295:                                              ; preds = %294, %203
  br label %296

296:                                              ; preds = %295, %176
  br label %297

297:                                              ; preds = %296, %159
  br label %298

298:                                              ; preds = %297, %147
  br label %299

299:                                              ; preds = %298, %135
  br label %300

300:                                              ; preds = %299, %118
  br label %301

301:                                              ; preds = %300, %97
  br label %302

302:                                              ; preds = %301, %80
  br label %303

303:                                              ; preds = %302
  br label %304

304:                                              ; preds = %303, %69
  %305 = call i32 (...) @rcu_read_unlock()
  %306 = load i32, i32* %6, align 4
  ret i32 %306
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @get_ldev(%struct.drbd_device*) #1

declare dso_local %struct.net_conf* @rcu_dereference(i32) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local %struct.TYPE_5__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i64 @conn_highest_peer(%struct.TYPE_6__*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
