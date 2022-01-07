; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_wait_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_wait_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fapll_data = type { i32, i32 }

@FAPLL_MAX_RETRIES = common dso_local global i32 0, align 4
@FAPLL_MAIN_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s failed to lock\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fapll_data*)* @ti_fapll_wait_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_fapll_wait_lock(%struct.fapll_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fapll_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fapll_data* %0, %struct.fapll_data** %3, align 8
  %6 = load i32, i32* @FAPLL_MAX_RETRIES, align 4
  store i32 %6, i32* %4, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load %struct.fapll_data*, %struct.fapll_data** %3, align 8
  %9 = getelementptr inbounds %struct.fapll_data, %struct.fapll_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @readl_relaxed(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FAPLL_MAIN_LOCK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %33

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp sle i32 %20, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %26

24:                                               ; preds = %19
  %25 = call i32 @udelay(i32 1)
  br label %7

26:                                               ; preds = %23, %7
  %27 = load %struct.fapll_data*, %struct.fapll_data** %3, align 8
  %28 = getelementptr inbounds %struct.fapll_data, %struct.fapll_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ETIMEDOUT, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
