; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_tegra_dfll_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_tegra_dfll_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_dfll = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"could not enable ref clock: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"could not enable register clock: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"could not enable i2c clock: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_dfll_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tegra_dfll*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.tegra_dfll* @dev_get_drvdata(%struct.device* %6)
  store %struct.tegra_dfll* %7, %struct.tegra_dfll** %4, align 8
  %8 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @dev_err(%struct.device* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %56

19:                                               ; preds = %1
  %20 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_enable(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %31 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_disable(i32 %32)
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %56

35:                                               ; preds = %19
  %36 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %37 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @clk_enable(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @clk_disable(i32 %48)
  %50 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_disable(i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %56

55:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %42, %26, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.tegra_dfll* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
