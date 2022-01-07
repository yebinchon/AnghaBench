; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_loongson2_cpufreq.c_loongson2_cpufreq_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_loongson2_cpufreq.c_loongson2_cpufreq_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.cpufreq_policy = type { %struct.clk* }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"cpu_clk\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"couldn't get CPU clk\0A\00", align 1
@cpu_clock_freq = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@loongson2_clockmod_table = common dso_local global %struct.TYPE_3__* null, align 8
@CPUFREQ_TABLE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @loongson2_cpufreq_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loongson2_cpufreq_cpu_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %8 = call %struct.clk* @clk_get(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %8, %struct.clk** %4, align 8
  %9 = load %struct.clk*, %struct.clk** %4, align 8
  %10 = call i64 @IS_ERR(%struct.clk* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.clk*, %struct.clk** %4, align 8
  %15 = call i32 @PTR_ERR(%struct.clk* %14)
  store i32 %15, i32* %2, align 4
  br label %70

16:                                               ; preds = %1
  %17 = load i32, i32* @cpu_clock_freq, align 4
  %18 = sdiv i32 %17, 1000
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.clk*, %struct.clk** %4, align 8
  %24 = call i32 @clk_put(%struct.clk* %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %70

27:                                               ; preds = %16
  store i32 2, i32* %5, align 4
  br label %28

28:                                               ; preds = %48, %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @loongson2_clockmod_table, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CPUFREQ_TABLE_END, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %28
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %38, %40
  %42 = udiv i64 %41, 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @loongson2_clockmod_table, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 %42, i64* %47, align 8
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load %struct.clk*, %struct.clk** %4, align 8
  %53 = load i64, i64* %6, align 8
  %54 = mul i64 %53, 1000
  %55 = call i32 @clk_set_rate(%struct.clk* %52, i64 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.clk*, %struct.clk** %4, align 8
  %60 = call i32 @clk_put(%struct.clk* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %70

62:                                               ; preds = %51
  %63 = load %struct.clk*, %struct.clk** %4, align 8
  %64 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %65 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %64, i32 0, i32 0
  store %struct.clk* %63, %struct.clk** %65, align 8
  %66 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @loongson2_clockmod_table, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 0
  %69 = call i32 @cpufreq_generic_init(%struct.cpufreq_policy* %66, %struct.TYPE_3__* %68, i32 0)
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %62, %58, %22, %12
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.clk* @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_put(%struct.clk*) #1

declare dso_local i32 @clk_set_rate(%struct.clk*, i64) #1

declare dso_local i32 @cpufreq_generic_init(%struct.cpufreq_policy*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
