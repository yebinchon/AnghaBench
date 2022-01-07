; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2416-cpufreq.c_s3c2416_cpufreq_set_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2416-cpufreq.c_s3c2416_cpufreq_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2416_data = type { i64, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cpufreq_policy = type { i32 }

@s3c2416_cpufreq = common dso_local global %struct.s3c2416_data zeroinitializer, align 8
@cpufreq_lock = common dso_local global i32 0, align 4
@SOURCE_HCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"cpufreq: entering dvs mode not allowed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"cpufreq: enter dvs\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"cpufreq: leave dvs\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"cpufreq: change armdiv to %dkHz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @s3c2416_cpufreq_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2416_cpufreq_set_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s3c2416_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.s3c2416_data* @s3c2416_cpufreq, %struct.s3c2416_data** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 @mutex_lock(i32* @cpufreq_lock)
  %11 = load %struct.s3c2416_data*, %struct.s3c2416_data** %5, align 8
  %12 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @SOURCE_HCLK, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load %struct.s3c2416_data*, %struct.s3c2416_data** %5, align 8
  %28 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %85

35:                                               ; preds = %26, %23
  %36 = load %struct.s3c2416_data*, %struct.s3c2416_data** %5, align 8
  %37 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load %struct.s3c2416_data*, %struct.s3c2416_data** %5, align 8
  %45 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @clk_get_rate(i32 %46)
  %48 = sdiv i32 %47, 1000
  br label %58

49:                                               ; preds = %40, %35
  %50 = load %struct.s3c2416_data*, %struct.s3c2416_data** %5, align 8
  %51 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %49, %43
  %59 = phi i32 [ %48, %43 ], [ %57, %49 ]
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.s3c2416_data*, %struct.s3c2416_data** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @s3c2416_cpufreq_enter_dvs(%struct.s3c2416_data* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  br label %84

67:                                               ; preds = %58
  %68 = load %struct.s3c2416_data*, %struct.s3c2416_data** %5, align 8
  %69 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %74 = load %struct.s3c2416_data*, %struct.s3c2416_data** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @s3c2416_cpufreq_leave_dvs(%struct.s3c2416_data* %74, i32 %75)
  store i32 %76, i32* %8, align 4
  br label %83

77:                                               ; preds = %67
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.s3c2416_data*, %struct.s3c2416_data** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @s3c2416_cpufreq_set_armdiv(%struct.s3c2416_data* %80, i32 %81)
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %77, %72
  br label %84

84:                                               ; preds = %83, %62
  br label %85

85:                                               ; preds = %84, %31
  %86 = call i32 @mutex_unlock(i32* @cpufreq_lock)
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @s3c2416_cpufreq_enter_dvs(%struct.s3c2416_data*, i32) #1

declare dso_local i32 @s3c2416_cpufreq_leave_dvs(%struct.s3c2416_data*, i32) #1

declare dso_local i32 @s3c2416_cpufreq_set_armdiv(%struct.s3c2416_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
