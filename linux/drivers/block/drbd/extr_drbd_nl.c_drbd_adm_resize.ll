; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_nl.c_drbd_adm_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64* }
%struct.drbd_config_context = type { %struct.TYPE_16__*, i32, %struct.drbd_device* }
%struct.TYPE_16__ = type { i32 }
%struct.drbd_device = type { i32, %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.disk_conf*, i32, %struct.TYPE_12__ }
%struct.disk_conf = type { i64 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.resize_parms = type { i32, i32, i64, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i64 }

@DRBD_ADM_NEED_MINOR = common dso_local global i32 0, align 4
@NO_ERROR = common dso_local global i32 0, align 4
@ERR_NO_DISK = common dso_local global i32 0, align 4
@DRBD_NLA_RESIZE_PARMS = common dso_local global i64 0, align 8
@ERR_MANDATORY_TAG = common dso_local global i32 0, align 4
@C_CONNECTED = common dso_local global i64 0, align 8
@ERR_RESIZE_RESYNC = common dso_local global i32 0, align 4
@R_SECONDARY = common dso_local global i64 0, align 8
@ERR_NO_PRIMARY = common dso_local global i32 0, align 4
@ERR_NEED_APV_93 = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ERR_NOMEM = common dso_local global i32 0, align 4
@ERR_MD_LAYOUT_TOO_BIG = common dso_local global i32 0, align 4
@MD_32kB_SECT = common dso_local global i32 0, align 4
@ERR_MD_LAYOUT_TOO_SMALL = common dso_local global i32 0, align 4
@ERR_MD_LAYOUT_CONNECTED = common dso_local global i32 0, align 4
@DDSF_FORCED = common dso_local global i32 0, align 4
@DDSF_NO_RESYNC = common dso_local global i32 0, align 4
@DS_ERROR = common dso_local global i32 0, align 4
@ERR_NOMEM_BITMAP = common dso_local global i32 0, align 4
@DS_ERROR_SPACE_MD = common dso_local global i32 0, align 4
@ERR_MD_LAYOUT_NO_FIT = common dso_local global i32 0, align 4
@DS_ERROR_SHRINK = common dso_local global i32 0, align 4
@ERR_IMPLICIT_SHRINK = common dso_local global i32 0, align 4
@DS_GREW = common dso_local global i32 0, align 4
@RESIZE_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drbd_adm_resize(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.drbd_config_context, align 8
  %7 = alloca %struct.disk_conf*, align 8
  %8 = alloca %struct.disk_conf*, align 8
  %9 = alloca %struct.resize_parms, align 8
  %10 = alloca %struct.drbd_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store %struct.disk_conf* null, %struct.disk_conf** %8, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %20 = load i32, i32* @DRBD_ADM_NEED_MINOR, align 4
  %21 = call i32 @drbd_adm_prepare(%struct.drbd_config_context* %6, %struct.sk_buff* %18, %struct.genl_info* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %3, align 4
  br label %345

27:                                               ; preds = %2
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @NO_ERROR, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %336

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 2
  %38 = load %struct.drbd_device*, %struct.drbd_device** %37, align 8
  store %struct.drbd_device* %38, %struct.drbd_device** %10, align 8
  %39 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %40 = call i32 @get_ldev(%struct.drbd_device* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ERR_NO_DISK, align 4
  store i32 %43, i32* %11, align 4
  br label %331

44:                                               ; preds = %32
  %45 = call i32 @memset(%struct.resize_parms* %9, i32 0, i32 32)
  %46 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %47 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %54 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %53, i32 0, i32 3
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 4
  %60 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %62 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @DRBD_NLA_RESIZE_PARMS, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %44
  %69 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %70 = call i32 @resize_parms_from_attrs(%struct.resize_parms* %9, %struct.genl_info* %69)
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32, i32* @ERR_MANDATORY_TAG, align 4
  store i32 %74, i32* %11, align 4
  %75 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %16, align 4
  %78 = call i32 @from_attrs_err_to_txt(i32 %77)
  %79 = call i32 @drbd_msg_put_info(i32 %76, i32 %78)
  br label %340

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %44
  %82 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %83 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @C_CONNECTED, align 8
  %87 = icmp sgt i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load i32, i32* @ERR_RESIZE_RESYNC, align 4
  store i32 %89, i32* %11, align 4
  br label %340

90:                                               ; preds = %81
  %91 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %92 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @R_SECONDARY, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %90
  %98 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %99 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @R_SECONDARY, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @ERR_NO_PRIMARY, align 4
  store i32 %105, i32* %11, align 4
  br label %340

106:                                              ; preds = %97, %90
  %107 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %112 = call %struct.TYPE_18__* @first_peer_device(%struct.drbd_device* %111)
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %116, 93
  br i1 %117, label %118, label %120

118:                                              ; preds = %110
  %119 = load i32, i32* @ERR_NEED_APV_93, align 4
  store i32 %119, i32* %11, align 4
  br label %340

120:                                              ; preds = %110, %106
  %121 = call i32 (...) @rcu_read_lock()
  %122 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %123 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %122, i32 0, i32 3
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 1
  %126 = load %struct.disk_conf*, %struct.disk_conf** %125, align 8
  %127 = call %struct.TYPE_17__* @rcu_dereference(%struct.disk_conf* %126)
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %15, align 8
  %130 = call i32 (...) @rcu_read_unlock()
  %131 = load i64, i64* %15, align 8
  %132 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %131, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %120
  %136 = load i32, i32* @GFP_KERNEL, align 4
  %137 = call %struct.disk_conf* @kmalloc(i32 8, i32 %136)
  store %struct.disk_conf* %137, %struct.disk_conf** %8, align 8
  %138 = load %struct.disk_conf*, %struct.disk_conf** %8, align 8
  %139 = icmp ne %struct.disk_conf* %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @ERR_NOMEM, align 4
  store i32 %141, i32* %11, align 4
  br label %340

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %120
  %144 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %145 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %144, i32 0, i32 3
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %164, label %153

153:                                              ; preds = %143
  %154 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %155 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %154, i32 0, i32 3
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sdiv i32 %161, 4
  %163 = icmp ne i32 %159, %162
  br i1 %163, label %164, label %195

164:                                              ; preds = %153, %143
  %165 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %166, %168
  store i32 %169, i32* %17, align 4
  %170 = load i32, i32* %17, align 4
  %171 = icmp sgt i32 %170, 16777216
  br i1 %171, label %172, label %174

172:                                              ; preds = %164
  %173 = load i32, i32* @ERR_MD_LAYOUT_TOO_BIG, align 4
  store i32 %173, i32* %11, align 4
  br label %340

174:                                              ; preds = %164
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* @MD_32kB_SECT, align 4
  %177 = sdiv i32 %176, 2
  %178 = icmp slt i32 %175, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, i32* @ERR_MD_LAYOUT_TOO_SMALL, align 4
  store i32 %180, i32* %11, align 4
  br label %340

181:                                              ; preds = %174
  %182 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %183 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @C_CONNECTED, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* @ERR_MD_LAYOUT_CONNECTED, align 4
  store i32 %193, i32* %11, align 4
  br label %340

194:                                              ; preds = %188, %181
  store i32 1, i32* %13, align 4
  br label %195

195:                                              ; preds = %194, %153
  %196 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %197 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %196, i32 0, i32 3
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %202 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %201, i32 0, i32 3
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i64 @drbd_get_capacity(i32 %205)
  %207 = icmp ne i64 %200, %206
  br i1 %207, label %208, label %219

208:                                              ; preds = %195
  %209 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %210 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %209, i32 0, i32 3
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i64 @drbd_get_capacity(i32 %213)
  %215 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %216 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %215, i32 0, i32 3
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  store i64 %214, i64* %218, align 8
  br label %219

219:                                              ; preds = %208, %195
  %220 = load %struct.disk_conf*, %struct.disk_conf** %8, align 8
  %221 = icmp ne %struct.disk_conf* %220, null
  br i1 %221, label %222, label %256

222:                                              ; preds = %219
  %223 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %224 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %223, i32 0, i32 2
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 0
  %227 = call i32 @mutex_lock(i32* %226)
  %228 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %229 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %228, i32 0, i32 3
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = load %struct.disk_conf*, %struct.disk_conf** %231, align 8
  store %struct.disk_conf* %232, %struct.disk_conf** %7, align 8
  %233 = load %struct.disk_conf*, %struct.disk_conf** %8, align 8
  %234 = load %struct.disk_conf*, %struct.disk_conf** %7, align 8
  %235 = bitcast %struct.disk_conf* %233 to i8*
  %236 = bitcast %struct.disk_conf* %234 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %235, i8* align 8 %236, i64 8, i1 false)
  %237 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 4
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.disk_conf*, %struct.disk_conf** %8, align 8
  %240 = getelementptr inbounds %struct.disk_conf, %struct.disk_conf* %239, i32 0, i32 0
  store i64 %238, i64* %240, align 8
  %241 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %242 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %241, i32 0, i32 3
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 1
  %245 = load %struct.disk_conf*, %struct.disk_conf** %244, align 8
  %246 = load %struct.disk_conf*, %struct.disk_conf** %8, align 8
  %247 = call i32 @rcu_assign_pointer(%struct.disk_conf* %245, %struct.disk_conf* %246)
  %248 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %249 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %248, i32 0, i32 2
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 0
  %252 = call i32 @mutex_unlock(i32* %251)
  %253 = call i32 (...) @synchronize_rcu()
  %254 = load %struct.disk_conf*, %struct.disk_conf** %7, align 8
  %255 = call i32 @kfree(%struct.disk_conf* %254)
  store %struct.disk_conf* null, %struct.disk_conf** %8, align 8
  br label %256

256:                                              ; preds = %222, %219
  %257 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %256
  %261 = load i32, i32* @DDSF_FORCED, align 4
  br label %263

262:                                              ; preds = %256
  br label %263

263:                                              ; preds = %262, %260
  %264 = phi i32 [ %261, %260 ], [ 0, %262 ]
  %265 = getelementptr inbounds %struct.resize_parms, %struct.resize_parms* %9, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %263
  %269 = load i32, i32* @DDSF_NO_RESYNC, align 4
  br label %271

270:                                              ; preds = %263
  br label %271

271:                                              ; preds = %270, %268
  %272 = phi i32 [ %269, %268 ], [ 0, %270 ]
  %273 = or i32 %264, %272
  store i32 %273, i32* %14, align 4
  %274 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %13, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %271
  br label %280

279:                                              ; preds = %271
  br label %280

280:                                              ; preds = %279, %278
  %281 = phi %struct.resize_parms* [ %9, %278 ], [ null, %279 ]
  %282 = call i32 @drbd_determine_dev_size(%struct.drbd_device* %274, i32 %275, %struct.resize_parms* %281)
  store i32 %282, i32* %12, align 4
  %283 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %284 = call i32 @drbd_md_sync(%struct.drbd_device* %283)
  %285 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %286 = call i32 @put_ldev(%struct.drbd_device* %285)
  %287 = load i32, i32* %12, align 4
  %288 = load i32, i32* @DS_ERROR, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %280
  %291 = load i32, i32* @ERR_NOMEM_BITMAP, align 4
  store i32 %291, i32* %11, align 4
  br label %331

292:                                              ; preds = %280
  %293 = load i32, i32* %12, align 4
  %294 = load i32, i32* @DS_ERROR_SPACE_MD, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %292
  %297 = load i32, i32* @ERR_MD_LAYOUT_NO_FIT, align 4
  store i32 %297, i32* %11, align 4
  br label %331

298:                                              ; preds = %292
  %299 = load i32, i32* %12, align 4
  %300 = load i32, i32* @DS_ERROR_SHRINK, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  %303 = load i32, i32* @ERR_IMPLICIT_SHRINK, align 4
  store i32 %303, i32* %11, align 4
  br label %331

304:                                              ; preds = %298
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305
  %307 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %308 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @C_CONNECTED, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %330

313:                                              ; preds = %306
  %314 = load i32, i32* %12, align 4
  %315 = load i32, i32* @DS_GREW, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %322

317:                                              ; preds = %313
  %318 = load i32, i32* @RESIZE_PENDING, align 4
  %319 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %320 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %319, i32 0, i32 0
  %321 = call i32 @set_bit(i32 %318, i32* %320)
  br label %322

322:                                              ; preds = %317, %313
  %323 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %324 = call %struct.TYPE_18__* @first_peer_device(%struct.drbd_device* %323)
  %325 = call i32 @drbd_send_uuids(%struct.TYPE_18__* %324)
  %326 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %327 = call %struct.TYPE_18__* @first_peer_device(%struct.drbd_device* %326)
  %328 = load i32, i32* %14, align 4
  %329 = call i32 @drbd_send_sizes(%struct.TYPE_18__* %327, i32 1, i32 %328)
  br label %330

330:                                              ; preds = %322, %306
  br label %331

331:                                              ; preds = %340, %330, %302, %296, %290, %42
  %332 = getelementptr inbounds %struct.drbd_config_context, %struct.drbd_config_context* %6, i32 0, i32 0
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 0
  %335 = call i32 @mutex_unlock(i32* %334)
  br label %336

336:                                              ; preds = %331, %31
  %337 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %338 = load i32, i32* %11, align 4
  %339 = call i32 @drbd_adm_finish(%struct.drbd_config_context* %6, %struct.genl_info* %337, i32 %338)
  store i32 0, i32* %3, align 4
  br label %345

340:                                              ; preds = %192, %179, %172, %140, %118, %104, %88, %73
  %341 = load %struct.drbd_device*, %struct.drbd_device** %10, align 8
  %342 = call i32 @put_ldev(%struct.drbd_device* %341)
  %343 = load %struct.disk_conf*, %struct.disk_conf** %8, align 8
  %344 = call i32 @kfree(%struct.disk_conf* %343)
  br label %331

345:                                              ; preds = %336, %25
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

declare dso_local i32 @drbd_adm_prepare(%struct.drbd_config_context*, %struct.sk_buff*, %struct.genl_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @get_ldev(%struct.drbd_device*) #1

declare dso_local i32 @memset(%struct.resize_parms*, i32, i32) #1

declare dso_local i32 @resize_parms_from_attrs(%struct.resize_parms*, %struct.genl_info*) #1

declare dso_local i32 @drbd_msg_put_info(i32, i32) #1

declare dso_local i32 @from_attrs_err_to_txt(i32) #1

declare dso_local %struct.TYPE_18__* @first_peer_device(%struct.drbd_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.TYPE_17__* @rcu_dereference(%struct.disk_conf*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.disk_conf* @kmalloc(i32, i32) #1

declare dso_local i64 @drbd_get_capacity(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rcu_assign_pointer(%struct.disk_conf*, %struct.disk_conf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @kfree(%struct.disk_conf*) #1

declare dso_local i32 @drbd_determine_dev_size(%struct.drbd_device*, i32, %struct.resize_parms*) #1

declare dso_local i32 @drbd_md_sync(%struct.drbd_device*) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @drbd_send_uuids(%struct.TYPE_18__*) #1

declare dso_local i32 @drbd_send_sizes(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @drbd_adm_finish(%struct.drbd_config_context*, %struct.genl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
