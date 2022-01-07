; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_tegra-gmi.c_tegra_gmi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_tegra-gmi.c_tegra_gmi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_gmi = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to enable clock: %d\0A\00", align 1
@TEGRA_GMI_TIMING0 = common dso_local global i64 0, align 8
@TEGRA_GMI_TIMING1 = common dso_local global i64 0, align 8
@TEGRA_GMI_CONFIG_GO = common dso_local global i32 0, align 4
@TEGRA_GMI_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_gmi*)* @tegra_gmi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gmi_enable(%struct.tegra_gmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_gmi*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_gmi* %0, %struct.tegra_gmi** %3, align 8
  %5 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @clk_prepare_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %60

18:                                               ; preds = %1
  %19 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @reset_control_assert(i32 %21)
  %23 = call i32 @usleep_range(i32 2000, i32 4000)
  %24 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @reset_control_deassert(i32 %26)
  %28 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TEGRA_GMI_TIMING0, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TEGRA_GMI_TIMING1, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load i32, i32* @TEGRA_GMI_CONFIG_GO, align 4
  %47 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tegra_gmi*, %struct.tegra_gmi** %3, align 8
  %55 = getelementptr inbounds %struct.tegra_gmi, %struct.tegra_gmi* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @TEGRA_GMI_CONFIG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %18, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
