; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_print_basics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_print_basics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CPUFREQ_ENTRY_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fid 0x%x (%d MHz), vid 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Only %d pstates on battery\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.powernow_k8_data*)* @print_basics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_basics(%struct.powernow_k8_data* %0) #0 {
  %2 = alloca %struct.powernow_k8_data*, align 8
  %3 = alloca i32, align 4
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %51, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %2, align 8
  %7 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %54

10:                                               ; preds = %4
  %11 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %2, align 8
  %12 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CPUFREQ_ENTRY_INVALID, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %10
  %22 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %2, align 8
  %23 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 255
  %31 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %2, align 8
  %32 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 1000
  %40 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %2, align 8
  %41 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 8
  %49 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %39, i32 %48)
  br label %50

50:                                               ; preds = %21, %10
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %4

54:                                               ; preds = %4
  %55 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %2, align 8
  %56 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %2, align 8
  %61 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
