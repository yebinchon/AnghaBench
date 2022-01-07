; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_imc_free_events.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_imc_free_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imc_events = type { %struct.imc_events*, %struct.imc_events*, %struct.imc_events* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imc_events*, i32)* @imc_free_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imc_free_events(%struct.imc_events* %0, i32 %1) #0 {
  %3 = alloca %struct.imc_events*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.imc_events* %0, %struct.imc_events** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.imc_events*, %struct.imc_events** %3, align 8
  %7 = icmp ne %struct.imc_events* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %42

9:                                                ; preds = %2
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %36, %9
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %10
  %15 = load %struct.imc_events*, %struct.imc_events** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %15, i64 %17
  %19 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %18, i32 0, i32 2
  %20 = load %struct.imc_events*, %struct.imc_events** %19, align 8
  %21 = call i32 @kfree(%struct.imc_events* %20)
  %22 = load %struct.imc_events*, %struct.imc_events** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %22, i64 %24
  %26 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %25, i32 0, i32 1
  %27 = load %struct.imc_events*, %struct.imc_events** %26, align 8
  %28 = call i32 @kfree(%struct.imc_events* %27)
  %29 = load %struct.imc_events*, %struct.imc_events** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %29, i64 %31
  %33 = getelementptr inbounds %struct.imc_events, %struct.imc_events* %32, i32 0, i32 0
  %34 = load %struct.imc_events*, %struct.imc_events** %33, align 8
  %35 = call i32 @kfree(%struct.imc_events* %34)
  br label %36

36:                                               ; preds = %14
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.imc_events*, %struct.imc_events** %3, align 8
  %41 = call i32 @kfree(%struct.imc_events* %40)
  br label %42

42:                                               ; preds = %39, %8
  ret void
}

declare dso_local i32 @kfree(%struct.imc_events*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
