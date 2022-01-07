; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snbep_pcu_alter_er.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_snbep.c_snbep_pcu_alter_er.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32, i32)* @snbep_pcu_alter_er to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snbep_pcu_alter_er(%struct.perf_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hw_perf_event*, align 8
  %8 = alloca %struct.hw_perf_event_extra*, align 8
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 0
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %7, align 8
  %12 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %13 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %12, i32 0, i32 1
  store %struct.hw_perf_event_extra* %13, %struct.hw_perf_event_extra** %8, align 8
  %14 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %15 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %19 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %25 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  %28 = mul nsw i32 8, %27
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %40

31:                                               ; preds = %3
  %32 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %33 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %34, %35
  %37 = mul nsw i32 8, %36
  %38 = load i32, i32* %9, align 4
  %39 = ashr i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %31, %22
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %46 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  %49 = load %struct.hw_perf_event*, %struct.hw_perf_event** %7, align 8
  %50 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %55 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %8, align 8
  %58 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %43, %40
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
