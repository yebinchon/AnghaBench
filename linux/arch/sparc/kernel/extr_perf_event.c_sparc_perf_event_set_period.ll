; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_perf_event_set_period.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_perf_event_set_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32)* }
%struct.perf_event = type { i32 }
%struct.hw_perf_event = type { i32, i32, i32, i32 }

@MAX_PERIOD = common dso_local global i32 0, align 4
@sparc_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, %struct.hw_perf_event*, i32)* @sparc_perf_event_set_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc_perf_event_set_period(%struct.perf_event* %0, %struct.hw_perf_event* %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.hw_perf_event* %1, %struct.hw_perf_event** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %10, i32 0, i32 3
  %12 = call i32 @local64_read(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %27 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sub nsw i32 %25, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %24, %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp sle i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %7, align 4
  %42 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %43 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %42, i32 0, i32 3
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @local64_set(i32* %43, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %48 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  store i32 1, i32* %9, align 4
  br label %49

49:                                               ; preds = %40, %32
  %50 = load i32, i32* %7, align 4
  %51 = icmp sle i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %60 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %59, i32 0, i32 3
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @local64_set(i32* %60, i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %65 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  store i32 1, i32* %9, align 4
  br label %66

66:                                               ; preds = %55, %49
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MAX_PERIOD, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @MAX_PERIOD, align 4
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %74 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %73, i32 0, i32 2
  %75 = load i32, i32* %7, align 4
  %76 = sub nsw i32 0, %75
  %77 = call i32 @local64_set(i32* %74, i32 %76)
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (i32, i32)*, i32 (i32, i32)** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = sub nsw i32 0, %82
  %84 = call i32 %80(i32 %81, i32 %83)
  %85 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %86 = call i32 @perf_event_update_userpage(%struct.perf_event* %85)
  %87 = load i32, i32* %9, align 4
  ret i32 %87
}

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
