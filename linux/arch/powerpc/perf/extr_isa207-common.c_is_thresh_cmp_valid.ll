; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_is_thresh_cmp_valid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_isa207-common.c_is_thresh_cmp_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVENT_THR_CMP_SHIFT = common dso_local global i32 0, align 4
@EVENT_THR_CMP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_thresh_cmp_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_thresh_cmp_valid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @EVENT_THR_CMP_SHIFT, align 4
  %8 = lshr i32 %6, %7
  %9 = load i32, i32* @EVENT_THR_CMP_MASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = lshr i32 %11, 7
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 96
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %21

20:                                               ; preds = %15, %1
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
