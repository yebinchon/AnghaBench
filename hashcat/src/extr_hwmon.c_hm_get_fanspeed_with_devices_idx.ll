; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_get_fanspeed_with_devices_idx.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hm_get_fanspeed_with_devices_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__*, i64, i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }

@CL_DEVICE_TYPE_GPU = common dso_local global i32 0, align 4
@VENDOR_ID_AMD = common dso_local global i64 0, align 8
@ADL_DL_FANCTRL_SPEED_TYPE_PERCENT = common dso_local global i32 0, align 4
@ADL_DL_FANCTRL_FLAG_USER_DEFINED_SPEED = common dso_local global i32 0, align 4
@VENDOR_ID_NV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hm_get_fanspeed_with_devices_idx(%struct.TYPE_19__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__, align 4
  %10 = alloca %struct.TYPE_21__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %6, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %17, align 8
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %7, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %255

24:                                               ; preds = %2
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %255

35:                                               ; preds = %24
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %73

45:                                               ; preds = %35
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  store i32 0, i32* %8, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @hm_NVML_nvmlDeviceGetFanSpeed(%struct.TYPE_19__* %51, i32 %59, i32* %8)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %70

62:                                               ; preds = %50
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  store i32 -1, i32* %3, align 4
  br label %255

70:                                               ; preds = %50
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %255

72:                                               ; preds = %45
  br label %73

73:                                               ; preds = %72, %35
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %247

83:                                               ; preds = %73
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CL_DEVICE_TYPE_GPU, align 4
  %93 = and i32 %91, %92
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83
  store i32 -1, i32* %3, align 4
  br label %255

96:                                               ; preds = %83
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @VENDOR_ID_AMD, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %207

107:                                              ; preds = %96
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %186

112:                                              ; preds = %107
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %151

122:                                              ; preds = %112
  %123 = call i32 @memset(%struct.TYPE_21__* %9, i32 0, i32 20)
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  store i32 20, i32* %124, align 4
  %125 = load i32, i32* @ADL_DL_FANCTRL_SPEED_TYPE_PERCENT, align 4
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 4
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* @ADL_DL_FANCTRL_FLAG_USER_DEFINED_SPEED, align 4
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 3
  store i32 %127, i32* %128, align 4
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @hm_ADL_Overdrive5_FanSpeed_Get(%struct.TYPE_19__* %129, i32 %137, i32 0, %struct.TYPE_21__* %9)
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %148

140:                                              ; preds = %122
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 1
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 4
  store i32 -1, i32* %3, align 4
  br label %255

148:                                              ; preds = %122
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %3, align 4
  br label %255

151:                                              ; preds = %112
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %153, align 8
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 6
  br i1 %160, label %161, label %185

161:                                              ; preds = %151
  %162 = call i32 @memset(%struct.TYPE_21__* %10, i32 0, i32 20)
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @hm_ADL_Overdrive6_FanSpeed_Get(%struct.TYPE_19__* %163, i32 %171, %struct.TYPE_21__* %10)
  %173 = icmp eq i32 %172, -1
  br i1 %173, label %174, label %182

174:                                              ; preds = %161
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 0
  store i32 0, i32* %181, align 4
  store i32 -1, i32* %3, align 4
  br label %255

182:                                              ; preds = %161
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %3, align 4
  br label %255

185:                                              ; preds = %151
  br label %186

186:                                              ; preds = %185, %107
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 3
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %206

191:                                              ; preds = %186
  store i32 0, i32* %11, align 4
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %193 = load i32, i32* %5, align 4
  %194 = call i32 @hm_SYSFS_get_fan_speed_current(%struct.TYPE_19__* %192, i32 %193, i32* %11)
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 4
  store i32 -1, i32* %3, align 4
  br label %255

204:                                              ; preds = %191
  %205 = load i32, i32* %11, align 4
  store i32 %205, i32* %3, align 4
  br label %255

206:                                              ; preds = %186
  br label %207

207:                                              ; preds = %206, %96
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @VENDOR_ID_NV, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %246

218:                                              ; preds = %207
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %245

223:                                              ; preds = %218
  store i32 0, i32* %12, align 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %226, align 8
  %228 = load i32, i32* %5, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @hm_NVML_nvmlDeviceGetFanSpeed(%struct.TYPE_19__* %224, i32 %232, i32* %12)
  %234 = icmp eq i32 %233, -1
  br i1 %234, label %235, label %243

235:                                              ; preds = %223
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  store i32 0, i32* %242, align 4
  store i32 -1, i32* %3, align 4
  br label %255

243:                                              ; preds = %223
  %244 = load i32, i32* %12, align 4
  store i32 %244, i32* %3, align 4
  br label %255

245:                                              ; preds = %218
  br label %246

246:                                              ; preds = %245, %207
  br label %247

247:                                              ; preds = %246, %73
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 0
  store i32 0, i32* %254, align 4
  store i32 -1, i32* %3, align 4
  br label %255

255:                                              ; preds = %247, %243, %235, %204, %196, %182, %174, %148, %140, %95, %70, %62, %34, %23
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

declare dso_local i32 @hm_NVML_nvmlDeviceGetFanSpeed(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @hm_ADL_Overdrive5_FanSpeed_Get(%struct.TYPE_19__*, i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @hm_ADL_Overdrive6_FanSpeed_Get(%struct.TYPE_19__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @hm_SYSFS_get_fan_speed_current(%struct.TYPE_19__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
