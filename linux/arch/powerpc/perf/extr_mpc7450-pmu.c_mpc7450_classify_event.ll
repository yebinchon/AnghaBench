; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_mpc7450-pmu.c_mpc7450_classify_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_mpc7450-pmu.c_mpc7450_classify_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@N_COUNTER = common dso_local global i32 0, align 4
@PM_PMCSEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mpc7450_classify_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc7450_classify_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PM_PMC_SH, align 4
  %7 = ashr i32 %5, %6
  %8 = load i32, i32* @PM_PMC_MSK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @N_COUNTER, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %38

17:                                               ; preds = %12
  store i32 4, i32* %2, align 4
  br label %38

18:                                               ; preds = %1
  %19 = load i32, i32* @PM_PMCSEL_MSK, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp sle i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %38

25:                                               ; preds = %18
  %26 = load i32, i32* %3, align 4
  %27 = icmp sle i32 %26, 7
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %38

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = icmp sle i32 %30, 13
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 2, i32* %2, align 4
  br label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = icmp sle i32 %34, 22
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 3, i32* %2, align 4
  br label %38

37:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36, %32, %28, %24, %17, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
