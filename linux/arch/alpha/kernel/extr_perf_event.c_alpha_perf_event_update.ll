; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_perf_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_perf_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i64* }
%struct.perf_event = type { i32 }
%struct.hw_perf_event = type { i32, i32 }

@alpha_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.perf_event*, %struct.hw_perf_event*, i32, i64)* @alpha_perf_event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @alpha_perf_event_update(%struct.perf_event* %0, %struct.hw_perf_event* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %5, align 8
  store %struct.hw_perf_event* %1, %struct.hw_perf_event** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  br label %12

12:                                               ; preds = %25, %4
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 1
  %15 = call i64 @local64_read(i32* %14)
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @alpha_read_pmc(i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %18, i32 0, i32 1
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = call i64 @local64_cmpxchg(i32* %19, i64 %20, i64 %21)
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %12

26:                                               ; preds = %12
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = and i64 %28, %35
  %37 = sub nsw i64 %27, %36
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* %11, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp slt i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %26
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, 1
  %54 = load i64, i64* %11, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %45, %26
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %59 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %58, i32 0, i32 0
  %60 = call i32 @local64_add(i64 %57, i32* %59)
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %63 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %62, i32 0, i32 0
  %64 = call i32 @local64_sub(i64 %61, i32* %63)
  %65 = load i64, i64* %10, align 8
  ret i64 %65
}

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i64 @alpha_read_pmc(i32) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local64_add(i64, i32*) #1

declare dso_local i32 @local64_sub(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
