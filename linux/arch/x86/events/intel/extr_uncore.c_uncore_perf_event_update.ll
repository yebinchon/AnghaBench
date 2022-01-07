; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_perf_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_perf_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { i32 }
%struct.perf_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uncore_perf_event_update(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @uncore_pmc_freerunning(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %17 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %18 = call i32 @uncore_freerunning_bits(%struct.intel_uncore_box* %16, %struct.perf_event* %17)
  %19 = sub nsw i32 64, %18
  store i32 %19, i32* %8, align 4
  br label %36

20:                                               ; preds = %2
  %21 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @uncore_pmc_fixed(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %29 = call i32 @uncore_fixed_ctr_bits(%struct.intel_uncore_box* %28)
  %30 = sub nsw i32 64, %29
  store i32 %30, i32* %8, align 4
  br label %35

31:                                               ; preds = %20
  %32 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %33 = call i32 @uncore_perf_ctr_bits(%struct.intel_uncore_box* %32)
  %34 = sub nsw i32 64, %33
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %15
  br label %37

37:                                               ; preds = %52, %36
  %38 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @local64_read(i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %43 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %44 = call i32 @uncore_read_counter(%struct.intel_uncore_box* %42, %struct.perf_event* %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @local64_xchg(i32* %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  br label %37

53:                                               ; preds = %37
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = shl i32 %57, %58
  %60 = sub nsw i32 %56, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = ashr i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %66 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %65, i32 0, i32 0
  %67 = call i32 @local64_add(i32 %64, i32* %66)
  ret void
}

declare dso_local i64 @uncore_pmc_freerunning(i32) #1

declare dso_local i32 @uncore_freerunning_bits(%struct.intel_uncore_box*, %struct.perf_event*) #1

declare dso_local i64 @uncore_pmc_fixed(i32) #1

declare dso_local i32 @uncore_fixed_ctr_bits(%struct.intel_uncore_box*) #1

declare dso_local i32 @uncore_perf_ctr_bits(%struct.intel_uncore_box*) #1

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @uncore_read_counter(%struct.intel_uncore_box*, %struct.perf_event*) #1

declare dso_local i32 @local64_xchg(i32*, i32) #1

declare dso_local i32 @local64_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
