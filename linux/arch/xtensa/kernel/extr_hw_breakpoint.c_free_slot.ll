; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_free_slot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_hw_breakpoint.c_free_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event**, i64, %struct.perf_event*)* @free_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_slot(%struct.perf_event** %0, i64 %1, %struct.perf_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_event**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.perf_event*, align 8
  %8 = alloca i64, align 8
  store %struct.perf_event** %0, %struct.perf_event*** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.perf_event* %2, %struct.perf_event** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  %14 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %14, i64 %15
  %17 = load %struct.perf_event*, %struct.perf_event** %16, align 8
  %18 = load %struct.perf_event*, %struct.perf_event** %7, align 8
  %19 = icmp eq %struct.perf_event* %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.perf_event**, %struct.perf_event*** %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %21, i64 %22
  store %struct.perf_event* null, %struct.perf_event** %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %33

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  br label %9

30:                                               ; preds = %9
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %30, %20
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
