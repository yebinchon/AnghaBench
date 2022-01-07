; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_cpu.c_print_cpus_offline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_cpu.c_print_cpus_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cpu_possible_mask = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%*pbl\00", align 1
@total_cpus = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%u-%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @print_cpus_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_cpus_offline(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = sub nsw i32 %11, 2
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @alloc_cpumask_var(i32* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %100

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @cpu_possible_mask, align 4
  %22 = load i32, i32* @cpu_online_mask, align 4
  %23 = call i32 @cpumask_andnot(i32 %20, i32 %21, i32 %22)
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @cpumask_pr_args(i32 %26)
  %28 = call i32 @scnprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @free_cpumask_var(i32 %29)
  %31 = load i32, i32* @total_cpus, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %86

33:                                               ; preds = %19
  %34 = load i32, i32* @nr_cpu_ids, align 4
  %35 = load i32, i32* @total_cpus, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 44, i8* %49, align 1
  br label %50

50:                                               ; preds = %44, %40, %37
  %51 = load i32, i32* @nr_cpu_ids, align 4
  %52 = load i32, i32* @total_cpus, align 4
  %53 = sub nsw i32 %52, 1
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* @nr_cpu_ids, align 4
  %64 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %59, i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  br label %85

69:                                               ; preds = %50
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32, i32* @nr_cpu_ids, align 4
  %78 = load i32, i32* @total_cpus, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %73, i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %69, %55
  br label %86

86:                                               ; preds = %85, %33, %19
  %87 = load i8*, i8** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %90, i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %86, %16
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_andnot(i32, i32, i32) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @cpumask_pr_args(i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
