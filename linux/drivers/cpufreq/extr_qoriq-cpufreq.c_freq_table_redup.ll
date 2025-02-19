; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qoriq-cpufreq.c_freq_table_redup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qoriq-cpufreq.c_freq_table_redup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_frequency_table = type { i64 }

@CPUFREQ_ENTRY_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_frequency_table*, i32)* @freq_table_redup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freq_table_redup(%struct.cpufreq_frequency_table* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_frequency_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cpufreq_frequency_table* %0, %struct.cpufreq_frequency_table** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %51, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %54

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %47, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %17, i64 %19
  %21 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CPUFREQ_ENTRY_INVALID, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %39, label %25

25:                                               ; preds = %16
  %26 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %26, i64 %28
  %30 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %32, i64 %34
  %36 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25, %16
  br label %47

40:                                               ; preds = %25
  %41 = load i64, i64* @CPUFREQ_ENTRY_INVALID, align 8
  %42 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %42, i64 %44
  %46 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %45, i32 0, i32 0
  store i64 %41, i64* %46, align 8
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %12

50:                                               ; preds = %40, %12
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %7

54:                                               ; preds = %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
