; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_pll.c_davinci_pll_sysclk_rate_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_pll.c_davinci_pll_sysclk_rate_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.clk_notifier_data = type { i32 }
%struct.clk_hw = type { i32 }
%struct.davinci_pllen_clk = type { i64 }

@PLLCMD = common dso_local global i64 0, align 8
@PLLCMD_GOSET = common dso_local global i32 0, align 4
@PLLSTAT = common dso_local global i64 0, align 8
@PLLSTAT_GOSTAT = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @davinci_pll_sysclk_rate_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_pll_sysclk_rate_change(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.clk_notifier_data*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca %struct.davinci_pllen_clk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.clk_notifier_data*
  store %struct.clk_notifier_data* %13, %struct.clk_notifier_data** %7, align 8
  %14 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %7, align 8
  %15 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_get_parent(i32 %16)
  %18 = call %struct.clk_hw* @__clk_get_hw(i32 %17)
  store %struct.clk_hw* %18, %struct.clk_hw** %8, align 8
  %19 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %20 = call %struct.davinci_pllen_clk* @to_davinci_pllen_clk(%struct.clk_hw* %19)
  store %struct.davinci_pllen_clk* %20, %struct.davinci_pllen_clk** %9, align 8
  %21 = load i64, i64* %5, align 8
  switch i64 %21, label %53 [
    i64 129, label %22
    i64 128, label %39
  ]

22:                                               ; preds = %3
  %23 = load %struct.davinci_pllen_clk*, %struct.davinci_pllen_clk** %9, align 8
  %24 = getelementptr inbounds %struct.davinci_pllen_clk, %struct.davinci_pllen_clk* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PLLCMD, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @PLLCMD_GOSET, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.davinci_pllen_clk*, %struct.davinci_pllen_clk** %9, align 8
  %34 = getelementptr inbounds %struct.davinci_pllen_clk, %struct.davinci_pllen_clk* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PLLCMD, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  br label %39

39:                                               ; preds = %3, %22
  br label %40

40:                                               ; preds = %47, %39
  %41 = load %struct.davinci_pllen_clk*, %struct.davinci_pllen_clk** %9, align 8
  %42 = getelementptr inbounds %struct.davinci_pllen_clk, %struct.davinci_pllen_clk* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PLLSTAT, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @PLLSTAT_GOSTAT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %40, label %52

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %3, %52
  %54 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %54
}

declare dso_local %struct.clk_hw* @__clk_get_hw(i32) #1

declare dso_local i32 @clk_get_parent(i32) #1

declare dso_local %struct.davinci_pllen_clk* @to_davinci_pllen_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
