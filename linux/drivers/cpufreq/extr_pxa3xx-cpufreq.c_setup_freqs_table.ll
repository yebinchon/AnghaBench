; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa3xx-cpufreq.c_setup_freqs_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pxa3xx-cpufreq.c_setup_freqs_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_freq_info = type { i32 }
%struct.cpufreq_frequency_table = type { i32, i32 }
%struct.cpufreq_policy = type { %struct.cpufreq_frequency_table* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@pxa3xx_freqs = common dso_local global %struct.pxa3xx_freq_info* null, align 8
@pxa3xx_freqs_num = common dso_local global i32 0, align 4
@pxa3xx_freqs_table = common dso_local global %struct.cpufreq_frequency_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, %struct.pxa3xx_freq_info*, i32)* @setup_freqs_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_freqs_table(%struct.cpufreq_policy* %0, %struct.pxa3xx_freq_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca %struct.pxa3xx_freq_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cpufreq_frequency_table*, align 8
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store %struct.pxa3xx_freq_info* %1, %struct.pxa3xx_freq_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = add nsw i32 %10, 1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cpufreq_frequency_table* @kcalloc(i32 %11, i32 8, i32 %12)
  store %struct.cpufreq_frequency_table* %13, %struct.cpufreq_frequency_table** %8, align 8
  %14 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %15 = icmp eq %struct.cpufreq_frequency_table* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %26, i64 %28
  %30 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 4
  %31 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %31, i64 %33
  %35 = getelementptr inbounds %struct.pxa3xx_freq_info, %struct.pxa3xx_freq_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %36, 1000
  %38 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %38, i64 %40
  %42 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %41, i32 0, i32 1
  store i32 %37, i32* %42, align 4
  br label %43

43:                                               ; preds = %24
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %20

46:                                               ; preds = %20
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %48, i64 %50
  %52 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %51, i32 0, i32 0
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %54 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %54, i64 %56
  %58 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %57, i32 0, i32 1
  store i32 %53, i32* %58, align 4
  %59 = load %struct.pxa3xx_freq_info*, %struct.pxa3xx_freq_info** %6, align 8
  store %struct.pxa3xx_freq_info* %59, %struct.pxa3xx_freq_info** @pxa3xx_freqs, align 8
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* @pxa3xx_freqs_num, align 4
  %61 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  store %struct.cpufreq_frequency_table* %61, %struct.cpufreq_frequency_table** @pxa3xx_freqs_table, align 8
  %62 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %8, align 8
  %63 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %64 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %63, i32 0, i32 0
  store %struct.cpufreq_frequency_table* %62, %struct.cpufreq_frequency_table** %64, align 8
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %46, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.cpufreq_frequency_table* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
