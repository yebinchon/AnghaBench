; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_init_clks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_init_clks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i8*, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [4 x i8] c"ref\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"missing ref clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"missing soc clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"missing i2c clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*)* @dfll_init_clks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfll_init_clks(%struct.tegra_dfll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dfll*, align 8
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %3, align 8
  %4 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %5 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i8* @devm_clk_get(i32 %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %8, i32 0, i32 4
  store i8* %7, i8** %9, align 8
  %10 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %10, i32 0, i32 4
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @IS_ERR(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %20, i32 0, i32 4
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @PTR_ERR(i8* %22)
  store i32 %23, i32* %2, align 4
  br label %73

24:                                               ; preds = %1
  %25 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @devm_clk_get(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %42 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @PTR_ERR(i8* %43)
  store i32 %44, i32* %2, align 4
  br label %73

45:                                               ; preds = %24
  %46 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @devm_clk_get(i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %51 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @IS_ERR(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %45
  %58 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %59 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %62 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %2, align 4
  br label %73

66:                                               ; preds = %45
  %67 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %68 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @clk_get_rate(i8* %69)
  %71 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %72 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %66, %57, %36, %15
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i8* @devm_clk_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
