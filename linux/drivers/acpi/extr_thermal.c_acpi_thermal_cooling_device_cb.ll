; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_acpi_thermal_cooling_device_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_acpi_thermal_cooling_device_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_zone_device = type { %struct.acpi_thermal* }
%struct.acpi_thermal = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_13__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i32, i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }

@THERMAL_NO_LIMIT = common dso_local global i32 0, align 4
@THERMAL_WEIGHT_DEFAULT = common dso_local global i32 0, align 4
@ACPI_THERMAL_MAX_ACTIVE = common dso_local global i32 0, align 4
@THERMAL_TRIPS_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_zone_device*, %struct.thermal_cooling_device*, i32)* @acpi_thermal_cooling_device_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thermal_cooling_device_cb(%struct.thermal_zone_device* %0, %struct.thermal_cooling_device* %1, i32 %2) #0 {
  %4 = alloca %struct.thermal_zone_device*, align 8
  %5 = alloca %struct.thermal_cooling_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_device*, align 8
  %8 = alloca %struct.acpi_thermal*, align 8
  %9 = alloca %struct.acpi_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.thermal_zone_device* %0, %struct.thermal_zone_device** %4, align 8
  store %struct.thermal_cooling_device* %1, %struct.thermal_cooling_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %17 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %16, i32 0, i32 0
  %18 = load %struct.acpi_device*, %struct.acpi_device** %17, align 8
  store %struct.acpi_device* %18, %struct.acpi_device** %7, align 8
  %19 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %20 = getelementptr inbounds %struct.thermal_zone_device, %struct.thermal_zone_device* %19, i32 0, i32 0
  %21 = load %struct.acpi_thermal*, %struct.acpi_thermal** %20, align 8
  store %struct.acpi_thermal* %21, %struct.acpi_thermal** %8, align 8
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %23 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  br label %32

32:                                               ; preds = %29, %3
  %33 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %34 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %45 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %109

51:                                               ; preds = %43
  %52 = load i32, i32* %14, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %105, %51
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %57 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %55, %61
  br i1 %62, label %63, label %108

63:                                               ; preds = %54
  %64 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %65 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @acpi_bus_get_device(i32 %74, %struct.acpi_device** %9)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @ACPI_FAILURE(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %63
  %80 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %81 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %82 = icmp ne %struct.acpi_device* %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79, %63
  br label %105

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %91 = load i32, i32* @THERMAL_NO_LIMIT, align 4
  %92 = load i32, i32* @THERMAL_NO_LIMIT, align 4
  %93 = load i32, i32* @THERMAL_WEIGHT_DEFAULT, align 4
  %94 = call i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device* %88, i32 %89, %struct.thermal_cooling_device* %90, i32 %91, i32 %92, i32 %93)
  store i32 %94, i32* %15, align 4
  br label %100

95:                                               ; preds = %84
  %96 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %99 = call i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device* %96, i32 %97, %struct.thermal_cooling_device* %98)
  store i32 %99, i32* %15, align 4
  br label %100

100:                                              ; preds = %95, %87
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %248

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %54

108:                                              ; preds = %54
  br label %109

109:                                              ; preds = %108, %43
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %193, %109
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* @ACPI_THERMAL_MAX_ACTIVE, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %196

114:                                              ; preds = %110
  %115 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %116 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %114
  br label %196

127:                                              ; preds = %114
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %130

130:                                              ; preds = %189, %127
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %133 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %131, %141
  br i1 %142, label %143, label %192

143:                                              ; preds = %130
  %144 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %145 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @acpi_bus_get_device(i32 %158, %struct.acpi_device** %9)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i64 @ACPI_FAILURE(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %143
  %164 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %165 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %166 = icmp ne %struct.acpi_device* %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163, %143
  br label %189

168:                                              ; preds = %163
  %169 = load i32, i32* %6, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %168
  %172 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %173 = load i32, i32* %14, align 4
  %174 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %175 = load i32, i32* @THERMAL_NO_LIMIT, align 4
  %176 = load i32, i32* @THERMAL_NO_LIMIT, align 4
  %177 = load i32, i32* @THERMAL_WEIGHT_DEFAULT, align 4
  %178 = call i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device* %172, i32 %173, %struct.thermal_cooling_device* %174, i32 %175, i32 %176, i32 %177)
  store i32 %178, i32* %15, align 4
  br label %184

179:                                              ; preds = %168
  %180 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %181 = load i32, i32* %14, align 4
  %182 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %183 = call i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device* %180, i32 %181, %struct.thermal_cooling_device* %182)
  store i32 %183, i32* %15, align 4
  br label %184

184:                                              ; preds = %179, %171
  %185 = load i32, i32* %15, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  br label %248

188:                                              ; preds = %184
  br label %189

189:                                              ; preds = %188, %167
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %130

192:                                              ; preds = %130
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %12, align 4
  br label %110

196:                                              ; preds = %126, %110
  store i32 0, i32* %12, align 4
  br label %197

197:                                              ; preds = %244, %196
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %200 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %198, %202
  br i1 %203, label %204, label %247

204:                                              ; preds = %197
  %205 = load %struct.acpi_thermal*, %struct.acpi_thermal** %8, align 8
  %206 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* %11, align 4
  %214 = call i32 @acpi_bus_get_device(i32 %213, %struct.acpi_device** %9)
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i64 @ACPI_SUCCESS(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %243

218:                                              ; preds = %204
  %219 = load %struct.acpi_device*, %struct.acpi_device** %9, align 8
  %220 = load %struct.acpi_device*, %struct.acpi_device** %7, align 8
  %221 = icmp eq %struct.acpi_device* %219, %220
  br i1 %221, label %222, label %243

222:                                              ; preds = %218
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %222
  %226 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %227 = load i32, i32* @THERMAL_TRIPS_NONE, align 4
  %228 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %229 = load i32, i32* @THERMAL_NO_LIMIT, align 4
  %230 = load i32, i32* @THERMAL_NO_LIMIT, align 4
  %231 = load i32, i32* @THERMAL_WEIGHT_DEFAULT, align 4
  %232 = call i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device* %226, i32 %227, %struct.thermal_cooling_device* %228, i32 %229, i32 %230, i32 %231)
  store i32 %232, i32* %15, align 4
  br label %238

233:                                              ; preds = %222
  %234 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %4, align 8
  %235 = load i32, i32* @THERMAL_TRIPS_NONE, align 4
  %236 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %5, align 8
  %237 = call i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device* %234, i32 %235, %struct.thermal_cooling_device* %236)
  store i32 %237, i32* %15, align 4
  br label %238

238:                                              ; preds = %233, %225
  %239 = load i32, i32* %15, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  br label %248

242:                                              ; preds = %238
  br label %243

243:                                              ; preds = %242, %218, %204
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %12, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %12, align 4
  br label %197

247:                                              ; preds = %197
  br label %248

248:                                              ; preds = %247, %241, %187, %103
  %249 = load i32, i32* %15, align 4
  ret i32 %249
}

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @thermal_zone_bind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*, i32, i32, i32) #1

declare dso_local i32 @thermal_zone_unbind_cooling_device(%struct.thermal_zone_device*, i32, %struct.thermal_cooling_device*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
