; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_perf_event_set_period.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_perf_event_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64* }
%struct.perf_event = type { i32 }
%struct.hw_perf_event = type { i64, i64, i32, i32 }

@alpha_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.hw_perf_event*, i32)* @alpha_perf_event_set_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpha_perf_event_set_period(%struct.perf_event* %0, %struct.hw_perf_event* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.hw_perf_event* %1, %struct.hw_perf_event** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 3
  %12 = call i64 @local64_read(i32* %11)
  store i64 %12, i64* %7, align 8
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = sub nsw i64 0, %17
  %19 = icmp sle i64 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  store i64 %24, i64* %7, align 8
  %25 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %26 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %25, i32 0, i32 3
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @local64_set(i32* %26, i64 %27)
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %31 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %23, %3
  %33 = load i64, i64* %7, align 8
  %34 = icmp sle i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %43 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %42, i32 0, i32 3
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @local64_set(i32* %43, i64 %44)
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %48 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %38, %32
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %50, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %49
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %62, %49
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %71, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %70
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %80, %70
  %89 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %90 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %89, i32 0, i32 2
  %91 = load i64, i64* %7, align 8
  %92 = sub nsw i64 0, %91
  %93 = call i32 @local64_set(i32* %90, i64 %92)
  %94 = load i32, i32* %6, align 4
  %95 = load i64, i64* %7, align 8
  %96 = sub nsw i64 0, %95
  %97 = call i32 @alpha_write_pmc(i32 %94, i64 %96)
  %98 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %99 = call i32 @perf_event_update_userpage(%struct.perf_event* %98)
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local64_set(i32*, i64) #1

declare dso_local i32 @alpha_write_pmc(i32, i64) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
