; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_8xx-pmu.c_mpc8xx_pmu_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_8xx-pmu.c_mpc8xx_pmu_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@itlb_miss_counter = common dso_local global i64 0, align 8
@dtlb_miss_counter = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @mpc8xx_pmu_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc8xx_pmu_read(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %8 = call i32 @event_type(%struct.perf_event* %7)
  store i32 %8, i32* %3, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %61

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %47, %12
  %14 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @local64_read(i32* %16)
  store i64 %17, i64* %4, align 8
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %46 [
    i32 131, label %19
    i32 129, label %25
    i32 128, label %36
    i32 130, label %41
  ]

19:                                               ; preds = %13
  %20 = call i64 (...) @get_tb()
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = sub nsw i64 %21, %22
  %24 = mul nsw i64 16, %23
  store i64 %24, i64* %6, align 8
  br label %46

25:                                               ; preds = %13
  %26 = call i64 (...) @get_insn_ctr()
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub nsw i64 %27, %28
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 281474976710656
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %32, %25
  br label %46

36:                                               ; preds = %13
  %37 = load i64, i64* @itlb_miss_counter, align 8
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = sub nsw i64 %38, %39
  store i64 %40, i64* %6, align 8
  br label %46

41:                                               ; preds = %13
  %42 = load i64, i64* @dtlb_miss_counter, align 8
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = sub nsw i64 %43, %44
  store i64 %45, i64* %6, align 8
  br label %46

46:                                               ; preds = %13, %41, %36, %35, %19
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i64 @local64_cmpxchg(i32* %50, i64 %51, i64 %52)
  %54 = load i64, i64* %4, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %13, label %56

56:                                               ; preds = %47
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %59 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %58, i32 0, i32 0
  %60 = call i32 @local64_add(i64 %57, i32* %59)
  br label %61

61:                                               ; preds = %56, %11
  ret void
}

declare dso_local i32 @event_type(%struct.perf_event*) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @get_tb(...) #1

declare dso_local i64 @get_insn_ctr(...) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
