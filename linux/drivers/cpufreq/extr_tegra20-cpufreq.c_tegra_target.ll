; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra20-cpufreq.c_tegra_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra20-cpufreq.c_tegra_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.cpufreq_policy = type { i32 }
%struct.tegra20_cpufreq = type { i32, i32, i32, i32, i32 }

@freq_table = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to change pll_x to %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @tegra_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra20_cpufreq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call %struct.tegra20_cpufreq* (...) @cpufreq_get_driver_data()
  store %struct.tegra20_cpufreq* %10, %struct.tegra20_cpufreq** %6, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @freq_table, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %6, align 8
  %18 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_get_rate(i32 %19)
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %8, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %6, align 8
  %28 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %6, align 8
  %31 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_set_parent(i32 %29, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %72

34:                                               ; preds = %2
  %35 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %6, align 8
  %36 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %7, align 8
  %39 = mul i64 %38, 1000
  %40 = call i32 @clk_set_rate(i32 %37, i64 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %6, align 8
  %45 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %43, %34
  %50 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %6, align 8
  %51 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %6, align 8
  %54 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @clk_set_parent(i32 %52, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %6, align 8
  %60 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %49
  %64 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %6, align 8
  %65 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @clk_disable_unprepare(i32 %66)
  %68 = load %struct.tegra20_cpufreq*, %struct.tegra20_cpufreq** %6, align 8
  %69 = getelementptr inbounds %struct.tegra20_cpufreq, %struct.tegra20_cpufreq* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %63, %49
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %26
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.tegra20_cpufreq* @cpufreq_get_driver_data(...) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
