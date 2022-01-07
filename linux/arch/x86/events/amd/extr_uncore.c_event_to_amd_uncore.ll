; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_event_to_amd_uncore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_event_to_amd_uncore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_uncore = type { i32 }
%struct.perf_event = type { i32 }

@amd_uncore_nb = common dso_local global i64 0, align 8
@amd_uncore_llc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.amd_uncore* (%struct.perf_event*)* @event_to_amd_uncore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.amd_uncore* @event_to_amd_uncore(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.amd_uncore*, align 8
  %3 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %4 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %5 = call i64 @is_nb_event(%struct.perf_event* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i64, i64* @amd_uncore_nb, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i64, i64* @amd_uncore_nb, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.amd_uncore** @per_cpu_ptr(i64 %11, i32 %14)
  %16 = load %struct.amd_uncore*, %struct.amd_uncore** %15, align 8
  store %struct.amd_uncore* %16, %struct.amd_uncore** %2, align 8
  br label %33

17:                                               ; preds = %7, %1
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = call i64 @is_llc_event(%struct.perf_event* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i64, i64* @amd_uncore_llc, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i64, i64* @amd_uncore_llc, align 8
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.amd_uncore** @per_cpu_ptr(i64 %25, i32 %28)
  %30 = load %struct.amd_uncore*, %struct.amd_uncore** %29, align 8
  store %struct.amd_uncore* %30, %struct.amd_uncore** %2, align 8
  br label %33

31:                                               ; preds = %21, %17
  br label %32

32:                                               ; preds = %31
  store %struct.amd_uncore* null, %struct.amd_uncore** %2, align 8
  br label %33

33:                                               ; preds = %32, %24, %10
  %34 = load %struct.amd_uncore*, %struct.amd_uncore** %2, align 8
  ret %struct.amd_uncore* %34
}

declare dso_local i64 @is_nb_event(%struct.perf_event*) #1

declare dso_local %struct.amd_uncore** @per_cpu_ptr(i64, i32) #1

declare dso_local i64 @is_llc_event(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
