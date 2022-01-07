; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_pmu_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_pmu_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @power_pmu_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_pmu_read(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PERF_HES_STOPPED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %90

14:                                               ; preds = %1
  %15 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %90

21:                                               ; preds = %14
  %22 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %23 = call i64 @is_ebb_event(%struct.perf_event* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @read_pmc(i32 %29)
  store i64 %30, i64* %3, align 8
  %31 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %32 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i64, i64* %3, align 8
  %35 = call i32 @local64_set(i32* %33, i64 %34)
  br label %90

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %55, %36
  %38 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = call i64 @local64_read(i32* %40)
  store i64 %41, i64* %5, align 8
  %42 = call i32 (...) @barrier()
  %43 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @read_pmc(i32 %46)
  store i64 %47, i64* %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i64 @check_and_compute_delta(i64 %48, i64 %49)
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %37
  br label %90

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %57 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %3, align 8
  %61 = call i64 @local64_cmpxchg(i32* %58, i64 %59, i64 %60)
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %37, label %64

64:                                               ; preds = %55
  %65 = load i64, i64* %4, align 8
  %66 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %67 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %66, i32 0, i32 1
  %68 = call i32 @local64_add(i64 %65, i32* %67)
  br label %69

69:                                               ; preds = %81, %64
  %70 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %71 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = call i64 @local64_read(i32* %72)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %4, align 8
  %76 = sub nsw i64 %74, %75
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %3, align 8
  %78 = icmp slt i64 %77, 1
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i64 1, i64* %3, align 8
  br label %80

80:                                               ; preds = %79, %69
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %83 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* %3, align 8
  %87 = call i64 @local64_cmpxchg(i32* %84, i64 %85, i64 %86)
  %88 = load i64, i64* %5, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %69, label %90

90:                                               ; preds = %13, %20, %25, %53, %81
  ret void
}

declare dso_local i64 @is_ebb_event(%struct.perf_event*) #1

declare dso_local i64 @read_pmc(i32) #1

declare dso_local i32 @local64_set(i32*, i64) #1

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @check_and_compute_delta(i64, i64) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
