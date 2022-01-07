; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c_rapl_event_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c_rapl_event_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32, i32 }

@RAPL_CNTR_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @rapl_event_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_event_update(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca %struct.hw_perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %3, align 8
  %11 = load i32, i32* @RAPL_CNTR_WIDTH, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %29, %1
  %13 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %13, i32 0, i32 1
  %15 = call i32 @local64_read(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @rdmsrl(i32 %19, i32 %20)
  %22 = load %struct.hw_perf_event*, %struct.hw_perf_event** %3, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %22, i32 0, i32 1
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @local64_cmpxchg(i32* %23, i32 %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %12
  %30 = call i32 (...) @cpu_relax()
  br label %12

31:                                               ; preds = %12
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %35, %36
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = ashr i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @rapl_scale(i32 %42, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %50 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %49, i32 0, i32 0
  %51 = call i32 @local64_add(i32 %48, i32* %50)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @local64_read(i32*) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @local64_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @rapl_scale(i32, i32) #1

declare dso_local i32 @local64_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
