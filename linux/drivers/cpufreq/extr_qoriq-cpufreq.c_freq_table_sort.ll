; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qoriq-cpufreq.c_freq_table_sort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_qoriq-cpufreq.c_freq_table_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_frequency_table = type { i32, i32 }

@CPUFREQ_ENTRY_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpufreq_frequency_table*, i32)* @freq_table_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @freq_table_sort(%struct.cpufreq_frequency_table* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_frequency_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpufreq_frequency_table, align 4
  store %struct.cpufreq_frequency_table* %0, %struct.cpufreq_frequency_table** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %107, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %110

16:                                               ; preds = %11
  %17 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %17, i64 %19
  %21 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %48, %16
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %31, i64 %33
  %35 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @CPUFREQ_ENTRY_INVALID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ule i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %30
  br label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %45, %44
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %26

51:                                               ; preds = %26
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %106

55:                                               ; preds = %51
  %56 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %56, i64 %58
  %60 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %10, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %63, i64 %65
  %67 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %10, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %70, i64 %72
  %74 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %76, i64 %78
  %80 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %79, i32 0, i32 1
  store i32 %75, i32* %80, align 4
  %81 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %81, i64 %83
  %85 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %87, i64 %89
  %91 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %90, i32 0, i32 0
  store i32 %86, i32* %91, align 4
  %92 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %10, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %94, i64 %96
  %98 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %97, i32 0, i32 1
  store i32 %93, i32* %98, align 4
  %99 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %10, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %3, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %101, i64 %103
  %105 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %104, i32 0, i32 0
  store i32 %100, i32* %105, align 4
  br label %106

106:                                              ; preds = %55, %51
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %5, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %5, align 4
  br label %11

110:                                              ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
