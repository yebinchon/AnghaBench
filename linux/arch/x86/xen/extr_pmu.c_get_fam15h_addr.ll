; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_get_fam15h_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_pmu.c_get_fam15h_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_F15H_PERF_CTR = common dso_local global i32 0, align 4
@MSR_F15H_PERF_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_fam15h_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fam15h_addr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %15 [
    i32 131, label %5
    i32 130, label %5
    i32 129, label %5
    i32 128, label %5
    i32 135, label %10
    i32 134, label %10
    i32 133, label %10
    i32 132, label %10
  ]

5:                                                ; preds = %1, %1, %1, %1
  %6 = load i32, i32* @MSR_F15H_PERF_CTR, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %7, 131
  %9 = add nsw i32 %6, %8
  store i32 %9, i32* %2, align 4
  br label %18

10:                                               ; preds = %1, %1, %1, %1
  %11 = load i32, i32* @MSR_F15H_PERF_CTL, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %12, 135
  %14 = add nsw i32 %11, %13
  store i32 %14, i32* %2, align 4
  br label %18

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %16, %10, %5
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
