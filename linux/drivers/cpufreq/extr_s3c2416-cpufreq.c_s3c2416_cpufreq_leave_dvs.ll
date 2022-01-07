; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2416-cpufreq.c_s3c2416_cpufreq_leave_dvs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2416-cpufreq.c_s3c2416_cpufreq_leave_dvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2416_dvfs = type { i32, i32 }
%struct.s3c2416_data = type { i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [42 x i8] c"cpufreq: not in dvs mode, so can't leave\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"cpufreq: force armdiv to hclk frequency (%lukHz)\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cpufreq: Failed to set the armdiv to %lukHz: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"cpufreq: switching armclk parent to armdiv (%lukHz)\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"cpufreq: Failed to switch armclk clock parent to armdiv: %d\0A\00", align 1
@s3c2416_dvfs_table = common dso_local global %struct.s3c2416_dvfs* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3c2416_data*, i32)* @s3c2416_cpufreq_leave_dvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2416_cpufreq_leave_dvs(%struct.s3c2416_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c2416_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s3c2416_data* %0, %struct.s3c2416_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %8 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %72

13:                                               ; preds = %2
  %14 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %15 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_get_rate(i32 %16)
  %18 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %19 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clk_get_rate(i32 %20)
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %13
  %24 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %25 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_get_rate(i32 %26)
  %28 = sdiv i32 %27, 1000
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %31 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %32 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_get_rate(i32 %33)
  %35 = sdiv i32 %34, 1000
  %36 = call i32 @s3c2416_cpufreq_set_armdiv(%struct.s3c2416_data* %30, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %23
  %40 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %41 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clk_get_rate(i32 %42)
  %44 = sdiv i32 %43, 1000
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %72

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48, %13
  %50 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %51 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @clk_get_rate(i32 %52)
  %54 = sdiv i32 %53, 1000
  %55 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %57 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %60 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clk_set_parent(i32 %58, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %49
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %72

69:                                               ; preds = %49
  %70 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %71 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %65, %39, %11
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @s3c2416_cpufreq_set_armdiv(%struct.s3c2416_data*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @clk_set_parent(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
