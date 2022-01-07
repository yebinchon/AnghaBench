; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_loongson1-cpufreq.c_ls1x_cpufreq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_loongson1-cpufreq.c_ls1x_cpufreq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.cpufreq_policy = type { i32, i32 }
%struct.device = type { i32 }
%struct.cpufreq_frequency_table = type { i32 }

@cpufreq = common dso_local global %struct.TYPE_2__* null, align 8
@DIV_CPU_WIDTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPUFREQ_ENTRY_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cpufreq table: index %d: frequency %d\0A\00", align 1
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @ls1x_cpufreq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ls1x_cpufreq_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cpufreq_frequency_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %10 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %11 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.device* @get_cpu_device(i32 %12)
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_get_rate(i32 %16)
  %18 = sdiv i32 %17, 1000
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @DIV_CPU_WIDTH, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.cpufreq_frequency_table* @kcalloc(i32 %21, i32 4, i32 %22)
  store %struct.cpufreq_frequency_table* %23, %struct.cpufreq_frequency_table** %5, align 8
  %24 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %25 = icmp ne %struct.cpufreq_frequency_table* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %93

29:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %75, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %78

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, 1
  %39 = udiv i32 %36, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ugt i32 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45, %35
  %52 = load i32, i32* @CPUFREQ_ENTRY_INVALID, align 4
  %53 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %53, i64 %55
  %57 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %56, i32 0, i32 0
  store i32 %52, i32* %57, align 4
  br label %65

58:                                               ; preds = %45
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %60, i64 %62
  %64 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 4
  br label %65

65:                                               ; preds = %58, %51
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %68, i64 %70
  %72 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_dbg(%struct.device* %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %73)
  br label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %30

78:                                               ; preds = %30
  %79 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %80 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %80, i64 %82
  %84 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %89 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %91 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %5, align 8
  %92 = call i32 @cpufreq_generic_init(%struct.cpufreq_policy* %90, %struct.cpufreq_frequency_table* %91, i32 0)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %78, %26
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.device* @get_cpu_device(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local %struct.cpufreq_frequency_table* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @cpufreq_generic_init(%struct.cpufreq_policy*, %struct.cpufreq_frequency_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
