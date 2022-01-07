; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_power.c_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_power.c_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i64 }

@MSR_F15H_CU_PWR_ACCUMULATOR = common dso_local global i32 0, align 4
@MSR_F15H_PTSC = common dso_local global i32 0, align 4
@max_cu_acc_power = common dso_local global i64 0, align 8
@cpu_pwr_sample_ratio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %3, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load i32, i32* @MSR_F15H_CU_PWR_ACCUMULATOR, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @rdmsrl(i32 %18, i64 %19)
  %21 = load i32, i32* @MSR_F15H_PTSC, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @rdmsrl(i32 %21, i64 %22)
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load i64, i64* @max_cu_acc_power, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %28, %29
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub nsw i64 %32, %31
  store i64 %33, i64* %8, align 8
  br label %38

34:                                               ; preds = %1
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %4, align 8
  %37 = sub nsw i64 %35, %36
  store i64 %37, i64* %8, align 8
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32, i32* @cpu_pwr_sample_ratio, align 4
  %40 = mul nsw i32 %39, 1000
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %8, align 8
  %43 = mul nsw i64 %42, %41
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %6, align 8
  %46 = sub nsw i64 %44, %45
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @do_div(i64 %47, i64 %48)
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %52 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %51, i32 0, i32 0
  %53 = call i32 @local64_add(i64 %50, i32* %52)
  ret void
}

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
