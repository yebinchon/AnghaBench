; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_pll.c_davinci_pllen_rate_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_pll.c_davinci_pllen_rate_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.clk_notifier_data = type { i32 }
%struct.clk_hw = type { i32 }
%struct.davinci_pllen_clk = type { i64 }

@PLLCTL = common dso_local global i64 0, align 8
@PRE_RATE_CHANGE = common dso_local global i64 0, align 8
@PLLCTL_PLLENSRC = common dso_local global i32 0, align 4
@PLLCTL_PLLEN = common dso_local global i32 0, align 4
@PLL_BYPASS_TIME = common dso_local global i32 0, align 4
@PLLCTL_PLLRST = common dso_local global i32 0, align 4
@PLLCTL_PLLDIS = common dso_local global i32 0, align 4
@PLL_RESET_TIME = common dso_local global i32 0, align 4
@PLL_LOCK_TIME = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @davinci_pllen_rate_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_pllen_rate_change(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.clk_notifier_data*, align 8
  %8 = alloca %struct.clk_hw*, align 8
  %9 = alloca %struct.davinci_pllen_clk*, align 8
  %10 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.clk_notifier_data*
  store %struct.clk_notifier_data* %12, %struct.clk_notifier_data** %7, align 8
  %13 = load %struct.clk_notifier_data*, %struct.clk_notifier_data** %7, align 8
  %14 = getelementptr inbounds %struct.clk_notifier_data, %struct.clk_notifier_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.clk_hw* @__clk_get_hw(i32 %15)
  store %struct.clk_hw* %16, %struct.clk_hw** %8, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %8, align 8
  %18 = call %struct.davinci_pllen_clk* @to_davinci_pllen_clk(%struct.clk_hw* %17)
  store %struct.davinci_pllen_clk* %18, %struct.davinci_pllen_clk** %9, align 8
  %19 = load %struct.davinci_pllen_clk*, %struct.davinci_pllen_clk** %9, align 8
  %20 = getelementptr inbounds %struct.davinci_pllen_clk, %struct.davinci_pllen_clk* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PLLCTL, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @PRE_RATE_CHANGE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %57

28:                                               ; preds = %3
  %29 = load i32, i32* @PLLCTL_PLLENSRC, align 4
  %30 = load i32, i32* @PLLCTL_PLLEN, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.davinci_pllen_clk*, %struct.davinci_pllen_clk** %9, align 8
  %37 = getelementptr inbounds %struct.davinci_pllen_clk, %struct.davinci_pllen_clk* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PLLCTL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load i32, i32* @PLL_BYPASS_TIME, align 4
  %43 = call i32 @udelay(i32 %42)
  %44 = load i32, i32* @PLLCTL_PLLRST, align 4
  %45 = load i32, i32* @PLLCTL_PLLDIS, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load %struct.davinci_pllen_clk*, %struct.davinci_pllen_clk** %9, align 8
  %52 = getelementptr inbounds %struct.davinci_pllen_clk, %struct.davinci_pllen_clk* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PLLCTL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  br label %82

57:                                               ; preds = %3
  %58 = load i32, i32* @PLL_RESET_TIME, align 4
  %59 = call i32 @udelay(i32 %58)
  %60 = load i32, i32* @PLLCTL_PLLRST, align 4
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.davinci_pllen_clk*, %struct.davinci_pllen_clk** %9, align 8
  %65 = getelementptr inbounds %struct.davinci_pllen_clk, %struct.davinci_pllen_clk* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PLLCTL, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = load i32, i32* @PLL_LOCK_TIME, align 4
  %71 = call i32 @udelay(i32 %70)
  %72 = load i32, i32* @PLLCTL_PLLEN, align 4
  %73 = load i32, i32* %10, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.davinci_pllen_clk*, %struct.davinci_pllen_clk** %9, align 8
  %77 = getelementptr inbounds %struct.davinci_pllen_clk, %struct.davinci_pllen_clk* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PLLCTL, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  br label %82

82:                                               ; preds = %57, %28
  %83 = load i32, i32* @NOTIFY_OK, align 4
  ret i32 %83
}

declare dso_local %struct.clk_hw* @__clk_get_hw(i32) #1

declare dso_local %struct.davinci_pllen_clk* @to_davinci_pllen_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
