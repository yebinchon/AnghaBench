; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-fsl-emb.c_fsl_emb_pmu_read.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-fsl-emb.c_fsl_emb_pmu_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @fsl_emb_pmu_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_emb_pmu_read(%struct.perf_event* %0) #0 {
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
  br label %49

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %26, %14
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = call i64 @local64_read(i32* %18)
  store i64 %19, i64* %5, align 8
  %20 = call i32 (...) @barrier()
  %21 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @read_pmc(i32 %24)
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %15
  %27 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %3, align 8
  %32 = call i64 @local64_cmpxchg(i32* %29, i64 %30, i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %15, label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = sub nsw i64 %36, %37
  %39 = and i64 %38, 4294967295
  store i64 %39, i64* %4, align 8
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 1
  %43 = call i32 @local64_add(i64 %40, i32* %42)
  %44 = load i64, i64* %4, align 8
  %45 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = call i32 @local64_sub(i64 %44, i32* %47)
  br label %49

49:                                               ; preds = %35, %13
  ret void
}

declare dso_local i64 @local64_read(i32*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @read_pmc(i32) #1

declare dso_local i64 @local64_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local64_add(i64, i32*) #1

declare dso_local i32 @local64_sub(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
