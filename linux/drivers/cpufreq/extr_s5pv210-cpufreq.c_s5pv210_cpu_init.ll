; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s5pv210-cpufreq.c_s5pv210_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s5pv210-cpufreq.c_s5pv210_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }
%struct.cpufreq_policy = type { i64, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"armclk\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sclk_dmc0\00", align 1
@dmc0_clk = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"hclk_msys\00", align 1
@dmc1_clk = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@dmc_base = common dso_local global i64* null, align 8
@LPDDR = common dso_local global i64 0, align 8
@LPDDR2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"CPUFreq doesn't support this memory type\0A\00", align 1
@s5pv210_dram_conf = common dso_local global %struct.TYPE_2__* null, align 8
@SLEEP_FREQ = common dso_local global i32 0, align 4
@s5pv210_freq_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @s5pv210_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5pv210_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %6 = call i8* @clk_get(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %10 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @IS_ERR(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %16 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @PTR_ERR(i8* %17)
  store i32 %18, i32* %2, align 4
  br label %103

19:                                               ; preds = %1
  %20 = call i8* @clk_get(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** @dmc0_clk, align 8
  %21 = load i8*, i8** @dmc0_clk, align 8
  %22 = call i64 @IS_ERR(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i8*, i8** @dmc0_clk, align 8
  %26 = call i32 @PTR_ERR(i8* %25)
  store i32 %26, i32* %5, align 4
  br label %97

27:                                               ; preds = %19
  %28 = call i8* @clk_get(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i8* %28, i8** @dmc1_clk, align 8
  %29 = load i8*, i8** @dmc1_clk, align 8
  %30 = call i64 @IS_ERR(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i8*, i8** @dmc1_clk, align 8
  %34 = call i32 @PTR_ERR(i8* %33)
  store i32 %34, i32* %5, align 4
  br label %94

35:                                               ; preds = %27
  %36 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %37 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %94

43:                                               ; preds = %35
  %44 = load i64*, i64** @dmc_base, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @check_mem_type(i64 %46)
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @LPDDR, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load i64, i64* %4, align 8
  %53 = load i64, i64* @LPDDR2, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %94

59:                                               ; preds = %51, %43
  %60 = load i64*, i64** @dmc_base, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 48
  %64 = call i32 @readl_relaxed(i64 %63)
  %65 = mul nsw i32 %64, 1000
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s5pv210_dram_conf, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load i8*, i8** @dmc0_clk, align 8
  %70 = call i8* @clk_get_rate(i8* %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s5pv210_dram_conf, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load i64*, i64** @dmc_base, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 48
  %78 = call i32 @readl_relaxed(i64 %77)
  %79 = mul nsw i32 %78, 1000
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s5pv210_dram_conf, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load i8*, i8** @dmc1_clk, align 8
  %84 = call i8* @clk_get_rate(i8* %83)
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s5pv210_dram_conf, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 1
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  store i8* %84, i8** %87, align 8
  %88 = load i32, i32* @SLEEP_FREQ, align 4
  %89 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %90 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 8
  %91 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %92 = load i32, i32* @s5pv210_freq_table, align 4
  %93 = call i32 @cpufreq_generic_init(%struct.cpufreq_policy* %91, i32 %92, i32 40000)
  store i32 0, i32* %2, align 4
  br label %103

94:                                               ; preds = %55, %40, %32
  %95 = load i8*, i8** @dmc0_clk, align 8
  %96 = call i32 @clk_put(i8* %95)
  br label %97

97:                                               ; preds = %94, %24
  %98 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %99 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @clk_put(i8* %100)
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %59, %14
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i8* @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @check_mem_type(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i8* @clk_get_rate(i8*) #1

declare dso_local i32 @cpufreq_generic_init(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @clk_put(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
