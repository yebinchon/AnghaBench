; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power7-pmu.c_init_power7_pmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power7-pmu.c_init_power7_pmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@cur_cpu_spec = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"ppc64/power7\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PVR_POWER7p = common dso_local global i32 0, align 4
@PPMU_SIAR_VALID = common dso_local global i32 0, align 4
@power7_pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_power7_pmu() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_cpu_spec, align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cur_cpu_spec, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @strcmp(i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %6, %0
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %1, align 4
  br label %25

15:                                               ; preds = %6
  %16 = load i32, i32* @PVR_POWER7p, align 4
  %17 = call i64 @pvr_version_is(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @PPMU_SIAR_VALID, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @power7_pmu, i32 0, i32 0), align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @power7_pmu, i32 0, i32 0), align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = call i32 @register_power_pmu(%struct.TYPE_4__* @power7_pmu)
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %23, %12
  %26 = load i32, i32* %1, align 4
  ret i32 %26
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @pvr_version_is(i32) #1

declare dso_local i32 @register_power_pmu(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
