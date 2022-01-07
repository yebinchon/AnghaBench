; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i64, i32 }

@DFLL_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"cannot enable DFLL in %s mode\0A\00", align 1
@mode_name = common dso_local global i32* null, align 8
@EPERM = common dso_local global i32 0, align 4
@DFLL_OPEN_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*)* @dfll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfll_enable(%struct.tegra_dfll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dfll*, align 8
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %3, align 8
  %4 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %5 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DFLL_DISABLED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32*, i32** @mode_name, align 8
  %14 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pm_runtime_get_sync(i32 %25)
  %27 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %28 = load i32, i32* @DFLL_OPEN_LOOP, align 4
  %29 = call i32 @dfll_set_mode(%struct.tegra_dfll* %27, i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %22, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @dfll_set_mode(%struct.tegra_dfll*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
