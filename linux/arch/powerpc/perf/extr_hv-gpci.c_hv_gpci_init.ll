; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-gpci.c_hv_gpci_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-gpci.c_hv_gpci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.hv_perf_caps = type { i32 }

@FW_FEATURE_LPAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"not a virtualized system, not enabling\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"could not obtain capabilities, not enabling, rc=%ld\0A\00", align 1
@PERF_PMU_CAP_NO_INTERRUPT = common dso_local global i32 0, align 4
@h_gpci_pmu = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hv_gpci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_gpci_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.hv_perf_caps, align 4
  %5 = call i32 (...) @hv_gpci_assert_offsets_correct()
  %6 = load i32, i32* @FW_FEATURE_LPAR, align 4
  %7 = call i32 @firmware_has_feature(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %33

13:                                               ; preds = %0
  %14 = call i64 @hv_perf_caps_get(%struct.hv_perf_caps* %4)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %1, align 4
  br label %33

22:                                               ; preds = %13
  %23 = load i32, i32* @PERF_PMU_CAP_NO_INTERRUPT, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @h_gpci_pmu, i32 0, i32 1), align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @h_gpci_pmu, i32 0, i32 1), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @h_gpci_pmu, i32 0, i32 0), align 4
  %27 = call i32 @perf_pmu_register(%struct.TYPE_3__* @h_gpci_pmu, i32 %26, i32 -1)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %1, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %30, %17, %9
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @hv_gpci_assert_offsets_correct(...) #1

declare dso_local i32 @firmware_has_feature(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @hv_perf_caps_get(%struct.hv_perf_caps*) #1

declare dso_local i32 @perf_pmu_register(%struct.TYPE_3__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
