; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_fetch_common_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_fetch_common_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"nvidia,droop-ctrl\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"nvidia,sample-rate\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"nvidia,force-mode\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"nvidia,cf\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"nvidia,ci\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"nvidia,cg\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"nvidia,cg-scale\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"missing clock-output-names property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*)* @dfll_fetch_common_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfll_fetch_common_params(%struct.tegra_dfll* %0) #0 {
  %2 = alloca %struct.tegra_dfll*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %5 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %5, i32 0, i32 8
  %7 = call i32 @read_dt_param(%struct.tegra_dfll* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %6)
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %11 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %11, i32 0, i32 7
  %13 = call i32 @read_dt_param(%struct.tegra_dfll* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %17 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %17, i32 0, i32 6
  %19 = call i32 @read_dt_param(%struct.tegra_dfll* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %18)
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %23 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %24 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %23, i32 0, i32 5
  %25 = call i32 @read_dt_param(%struct.tegra_dfll* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %24)
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %29 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %30 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %29, i32 0, i32 4
  %31 = call i32 @read_dt_param(%struct.tegra_dfll* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %30)
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  %34 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %35 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %36 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %35, i32 0, i32 3
  %37 = call i32 @read_dt_param(%struct.tegra_dfll* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %36)
  %38 = load i32, i32* %3, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %41 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @of_property_read_bool(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %46 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %47 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %49 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %54 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %53, i32 0, i32 1
  %55 = call i64 @of_property_read_string(i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %1
  %58 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %59 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = call i32 @dev_err(%struct.TYPE_2__* %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %57, %1
  %63 = load i32, i32* %3, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  br label %69

69:                                               ; preds = %66, %65
  %70 = phi i32 [ 0, %65 ], [ %68, %66 ]
  ret i32 %70
}

declare dso_local i32 @read_dt_param(%struct.tegra_dfll*, i8*, i32*) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i64 @of_property_read_string(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
