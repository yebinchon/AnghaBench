; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_amd_uncore_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/amd/extr_uncore.c_amd_uncore_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }
%struct.amd_uncore = type { i32, i32* }

@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @amd_uncore_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_uncore_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amd_uncore*, align 8
  %7 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = call %struct.amd_uncore* @event_to_amd_uncore(%struct.perf_event* %8)
  store %struct.amd_uncore* %9, %struct.amd_uncore** %6, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %7, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = load i32, i32* @PERF_EF_UPDATE, align 4
  %14 = call i32 @amd_uncore_stop(%struct.perf_event* %12, i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.amd_uncore*, %struct.amd_uncore** %6, align 8
  %18 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.amd_uncore*, %struct.amd_uncore** %6, align 8
  %23 = getelementptr inbounds %struct.amd_uncore, %struct.amd_uncore* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = call %struct.perf_event* @cmpxchg(i32* %27, %struct.perf_event* %28, i32* null)
  %30 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %31 = icmp eq %struct.perf_event* %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %37

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %15

37:                                               ; preds = %32, %15
  %38 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %39 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %38, i32 0, i32 0
  store i32 -1, i32* %39, align 4
  ret void
}

declare dso_local %struct.amd_uncore* @event_to_amd_uncore(%struct.perf_event*) #1

declare dso_local i32 @amd_uncore_stop(%struct.perf_event*, i32) #1

declare dso_local %struct.perf_event* @cmpxchg(i32*, %struct.perf_event*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
