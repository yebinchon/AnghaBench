; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlbex_64.c_expevt_to_fault_code.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlbex_64.c_expevt_to_fault_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAULT_CODE_ITLB = common dso_local global i32 0, align 4
@FAULT_CODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @expevt_to_fault_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expevt_to_fault_code(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = icmp eq i64 %4, 2624
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @FAULT_CODE_ITLB, align 4
  store i32 %7, i32* %2, align 4
  br label %15

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp eq i64 %9, 96
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load i32, i32* @FAULT_CODE_WRITE, align 4
  store i32 %12, i32* %2, align 4
  br label %15

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %14, %11, %6
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
