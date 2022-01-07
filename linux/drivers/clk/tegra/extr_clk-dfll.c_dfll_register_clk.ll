; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_register_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_register_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.tegra_dfll = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }

@dfll_clk_init_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"DFLL clock registration error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"of_clk_add_provider() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*)* @dfll_register_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfll_register_clk(%struct.tegra_dfll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dfll*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %3, align 8
  %5 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @dfll_clk_init_data, i32 0, i32 0), align 4
  %8 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store %struct.TYPE_5__* @dfll_clk_init_data, %struct.TYPE_5__** %10, align 8
  %11 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %14, i32 0, i32 2
  %16 = call i32 @clk_register(%struct.TYPE_6__* %13, %struct.TYPE_7__* %15)
  %17 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i32 @dev_err(%struct.TYPE_6__* %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %1
  %32 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @of_clk_src_simple_get, align 4
  %38 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @of_clk_add_provider(i32 %36, i32 %37, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %31
  %45 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @dev_err(%struct.TYPE_6__* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %50 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @clk_unregister(i32 %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %44, %24
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @clk_register(%struct.TYPE_6__*, %struct.TYPE_7__*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @of_clk_add_provider(i32, i32, i32) #1

declare dso_local i32 @clk_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
