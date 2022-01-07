; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_query_current_values_with_pending_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_query_current_values_with_pending_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"detected change pending stuck\0A\00", align 1
@MSR_FIDVID_STATUS = common dso_local global i32 0, align 4
@MSR_S_LO_CHANGE_PENDING = common dso_local global i32 0, align 4
@MSR_S_HI_CURRENT_VID = common dso_local global i32 0, align 4
@MSR_S_LO_CURRENT_FID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*)* @query_current_values_with_pending_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_current_values_with_pending_wait(%struct.powernow_k8_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powernow_k8_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %3, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %18, %1
  %8 = load i32, i32* %6, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %6, align 4
  %10 = icmp sgt i32 %8, 10000
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %34

13:                                               ; preds = %7
  %14 = load i32, i32* @MSR_FIDVID_STATUS, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @rdmsr(i32 %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MSR_S_LO_CHANGE_PENDING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %7, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MSR_S_HI_CURRENT_VID, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %28 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MSR_S_LO_CURRENT_FID, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %33 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %23, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @rdmsr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
