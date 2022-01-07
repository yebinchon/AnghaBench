; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c64xx-cpufreq.c_s3c64xx_cpufreq_set_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c64xx-cpufreq.c_s3c64xx_cpufreq_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.s3c64xx_dvfs = type { i32, i32 }
%struct.cpufreq_policy = type { i32 }

@s3c64xx_freq_table = common dso_local global %struct.TYPE_2__* null, align 8
@s3c64xx_dvfs_table = common dso_local global %struct.s3c64xx_dvfs* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to set rate %dkHz: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Set actual frequency %lukHz\0A\00", align 1
@vddarm = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @s3c64xx_cpufreq_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c64xx_cpufreq_set_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpufreq_policy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s3c64xx_dvfs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %11 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_get_rate(i32 %12)
  %14 = sdiv i32 %13, 1000
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s3c64xx_freq_table, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load %struct.s3c64xx_dvfs*, %struct.s3c64xx_dvfs** @s3c64xx_dvfs_table, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s3c64xx_freq_table, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.s3c64xx_dvfs, %struct.s3c64xx_dvfs* %21, i64 %27
  store %struct.s3c64xx_dvfs* %28, %struct.s3c64xx_dvfs** %6, align 8
  %29 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %30 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = mul i32 %32, 1000
  %34 = call i32 @clk_set_rate(i32 %31, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %2
  %43 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %4, align 8
  %44 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_get_rate(i32 %45)
  %47 = sdiv i32 %46, 1000
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %42, %37
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
