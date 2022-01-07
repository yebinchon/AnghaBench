; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_rbox_put_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore_nhmex.c_nhmex_rbox_put_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_box = type { %struct.intel_uncore_extra_reg* }
%struct.intel_uncore_extra_reg = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.hw_perf_event_extra }
%struct.hw_perf_event_extra = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_box*, %struct.perf_event*)* @nhmex_rbox_put_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nhmex_rbox_put_constraint(%struct.intel_uncore_box* %0, %struct.perf_event* %1) #0 {
  %3 = alloca %struct.intel_uncore_box*, align 8
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.intel_uncore_extra_reg*, align 8
  %6 = alloca %struct.hw_perf_event_extra*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.intel_uncore_box* %0, %struct.intel_uncore_box** %3, align 8
  store %struct.perf_event* %1, %struct.perf_event** %4, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.hw_perf_event_extra* %11, %struct.hw_perf_event_extra** %6, align 8
  %12 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %13 = call i64 @uncore_box_is_fake(%struct.intel_uncore_box* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %17 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %66

21:                                               ; preds = %15
  %22 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %23 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = srem i32 %24, 6
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %21
  %33 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %34 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 6
  %37 = mul nsw i32 %36, 5
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %3, align 8
  %41 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %40, i32 0, i32 0
  %42 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %42, i64 %44
  store %struct.intel_uncore_extra_reg* %45, %struct.intel_uncore_extra_reg** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %51, label %48

48:                                               ; preds = %32
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %59

51:                                               ; preds = %48, %32
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 %52, 2
  %54 = mul nsw i32 %53, 8
  %55 = shl i32 1, %54
  %56 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %5, align 8
  %57 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %56, i32 0, i32 0
  %58 = call i32 @atomic_sub(i32 %55, i32* %57)
  br label %63

59:                                               ; preds = %48
  %60 = load %struct.intel_uncore_extra_reg*, %struct.intel_uncore_extra_reg** %5, align 8
  %61 = getelementptr inbounds %struct.intel_uncore_extra_reg, %struct.intel_uncore_extra_reg* %60, i32 0, i32 0
  %62 = call i32 @atomic_dec(i32* %61)
  br label %63

63:                                               ; preds = %59, %51
  %64 = load %struct.hw_perf_event_extra*, %struct.hw_perf_event_extra** %6, align 8
  %65 = getelementptr inbounds %struct.hw_perf_event_extra, %struct.hw_perf_event_extra* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %20
  ret void
}

declare dso_local i64 @uncore_box_is_fake(%struct.intel_uncore_box*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
