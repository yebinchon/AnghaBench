; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_15__, %struct.TYPE_14__*, %struct.TYPE_24__*, %struct.TYPE_22__*, %struct.TYPE_20__*, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 (%struct.device*)* }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 (%struct.device*)* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 (%struct.device*)* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.device*)* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 (%struct.device*)* }
%struct.TYPE_16__ = type { i64 }

@DPM_FLAG_SMART_SUSPEND = common dso_local global i32 0, align 4
@DPM_FLAG_LEAVE_SUSPENDED = common dso_local global i32 0, align 4
@PM_EVENT_SUSPEND = common dso_local global i64 0, align 8
@DPM_FLAG_NEVER_SKIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i64)* @device_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_prepare(%struct.device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32 (%struct.device*)*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 (%struct.device*)* null, i32 (%struct.device*)** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %199

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @pm_runtime_enabled(%struct.device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* @DPM_FLAG_SMART_SUSPEND, align 4
  %22 = load i32, i32* @DPM_FLAG_LEAVE_SUSPENDED, align 4
  %23 = or i32 %21, %22
  %24 = call i64 @dev_pm_test_driver_flags(%struct.device* %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %19, %15
  %27 = phi i1 [ false, %15 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = call i32 @pm_runtime_get_noresume(%struct.device* %30)
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = call i32 @device_lock(%struct.device* %32)
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = getelementptr inbounds %struct.device, %struct.device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %26
  br label %149

43:                                               ; preds = %26
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 5
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %45, align 8
  %47 = icmp ne %struct.TYPE_18__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 5
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i32 (%struct.device*)*, i32 (%struct.device*)** %53, align 8
  store i32 (%struct.device*)* %54, i32 (%struct.device*)** %6, align 8
  br label %118

55:                                               ; preds = %43
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = icmp ne %struct.TYPE_20__* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = getelementptr inbounds %struct.device, %struct.device* %61, i32 0, i32 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %64, align 8
  %66 = icmp ne %struct.TYPE_19__* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32 (%struct.device*)*, i32 (%struct.device*)** %73, align 8
  store i32 (%struct.device*)* %74, i32 (%struct.device*)** %6, align 8
  br label %117

75:                                               ; preds = %60, %55
  %76 = load %struct.device*, %struct.device** %5, align 8
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 3
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %77, align 8
  %79 = icmp ne %struct.TYPE_22__* %78, null
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = getelementptr inbounds %struct.device, %struct.device* %81, i32 0, i32 3
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_21__*, %struct.TYPE_21__** %84, align 8
  %86 = icmp ne %struct.TYPE_21__* %85, null
  br i1 %86, label %87, label %95

87:                                               ; preds = %80
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = getelementptr inbounds %struct.device, %struct.device* %88, i32 0, i32 3
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i32 (%struct.device*)*, i32 (%struct.device*)** %93, align 8
  store i32 (%struct.device*)* %94, i32 (%struct.device*)** %6, align 8
  br label %116

95:                                               ; preds = %80, %75
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = getelementptr inbounds %struct.device, %struct.device* %96, i32 0, i32 2
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %97, align 8
  %99 = icmp ne %struct.TYPE_24__* %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %95
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = getelementptr inbounds %struct.device, %struct.device* %101, i32 0, i32 2
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %104, align 8
  %106 = icmp ne %struct.TYPE_23__* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load %struct.device*, %struct.device** %5, align 8
  %109 = getelementptr inbounds %struct.device, %struct.device* %108, i32 0, i32 2
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i32 (%struct.device*)*, i32 (%struct.device*)** %113, align 8
  store i32 (%struct.device*)* %114, i32 (%struct.device*)** %6, align 8
  br label %115

115:                                              ; preds = %107, %100, %95
  br label %116

116:                                              ; preds = %115, %87
  br label %117

117:                                              ; preds = %116, %67
  br label %118

118:                                              ; preds = %117, %48
  %119 = load i32 (%struct.device*)*, i32 (%struct.device*)** %6, align 8
  %120 = icmp ne i32 (%struct.device*)* %119, null
  br i1 %120, label %141, label %121

121:                                              ; preds = %118
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = getelementptr inbounds %struct.device, %struct.device* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = icmp ne %struct.TYPE_14__* %124, null
  br i1 %125, label %126, label %141

126:                                              ; preds = %121
  %127 = load %struct.device*, %struct.device** %5, align 8
  %128 = getelementptr inbounds %struct.device, %struct.device* %127, i32 0, i32 1
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %130, align 8
  %132 = icmp ne %struct.TYPE_25__* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %126
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = getelementptr inbounds %struct.device, %struct.device* %134, i32 0, i32 1
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  %140 = load i32 (%struct.device*)*, i32 (%struct.device*)** %139, align 8
  store i32 (%struct.device*)* %140, i32 (%struct.device*)** %6, align 8
  br label %141

141:                                              ; preds = %133, %126, %121, %118
  %142 = load i32 (%struct.device*)*, i32 (%struct.device*)** %6, align 8
  %143 = icmp ne i32 (%struct.device*)* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32 (%struct.device*)*, i32 (%struct.device*)** %6, align 8
  %146 = load %struct.device*, %struct.device** %5, align 8
  %147 = call i32 %145(%struct.device* %146)
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %144, %141
  br label %149

149:                                              ; preds = %148, %42
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = call i32 @device_unlock(%struct.device* %150)
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %149
  %155 = load i32 (%struct.device*)*, i32 (%struct.device*)** %6, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @suspend_report_result(i32 (%struct.device*)* %155, i32 %156)
  %158 = load %struct.device*, %struct.device** %5, align 8
  %159 = call i32 @pm_runtime_put(%struct.device* %158)
  %160 = load i32, i32* %7, align 4
  store i32 %160, i32* %3, align 4
  br label %199

161:                                              ; preds = %149
  %162 = load %struct.device*, %struct.device** %5, align 8
  %163 = getelementptr inbounds %struct.device, %struct.device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  %165 = call i32 @spin_lock_irq(i32* %164)
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %4, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @PM_EVENT_SUSPEND, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %189

170:                                              ; preds = %161
  %171 = load %struct.device*, %struct.device** %5, align 8
  %172 = call i64 @pm_runtime_suspended(%struct.device* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %170
  %175 = load i32, i32* %7, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %174, %170
  %178 = load %struct.device*, %struct.device** %5, align 8
  %179 = getelementptr inbounds %struct.device, %struct.device* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %177, %174
  %184 = load %struct.device*, %struct.device** %5, align 8
  %185 = load i32, i32* @DPM_FLAG_NEVER_SKIP, align 4
  %186 = call i64 @dev_pm_test_driver_flags(%struct.device* %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  %188 = xor i1 %187, true
  br label %189

189:                                              ; preds = %183, %177, %161
  %190 = phi i1 [ false, %177 ], [ false, %161 ], [ %188, %183 ]
  %191 = zext i1 %190 to i32
  %192 = load %struct.device*, %struct.device** %5, align 8
  %193 = getelementptr inbounds %struct.device, %struct.device* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  %195 = load %struct.device*, %struct.device** %5, align 8
  %196 = getelementptr inbounds %struct.device, %struct.device* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 2
  %198 = call i32 @spin_unlock_irq(i32* %197)
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %189, %154, %14
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @pm_runtime_enabled(%struct.device*) #1

declare dso_local i64 @dev_pm_test_driver_flags(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

declare dso_local i32 @suspend_report_result(i32 (%struct.device*)*, i32) #1

declare dso_local i32 @pm_runtime_put(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @pm_runtime_suspended(%struct.device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
