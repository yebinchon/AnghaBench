; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_bmips-cpufreq.c_bmips_cpufreq_get_freq_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_bmips-cpufreq.c_bmips_cpufreq_get_freq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.cpufreq_frequency_table = type { i64, i32 }
%struct.cpufreq_policy = type { i32 }

@priv = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPUFREQ_TABLE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpufreq_frequency_table* (%struct.cpufreq_policy*)* @bmips_cpufreq_get_freq_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpufreq_frequency_table* @bmips_cpufreq_get_freq_table(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_frequency_table*, align 8
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.cpufreq_frequency_table*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @priv, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @htp_freq_to_cpu_freq(i32 %9)
  store i64 %10, i64* %5, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @priv, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cpufreq_frequency_table* @kmalloc_array(i32 %14, i32 16, i32 %15)
  store %struct.cpufreq_frequency_table* %16, %struct.cpufreq_frequency_table** %4, align 8
  %17 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %18 = icmp ne %struct.cpufreq_frequency_table* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.cpufreq_frequency_table* @ERR_PTR(i32 %21)
  store %struct.cpufreq_frequency_table* %22, %struct.cpufreq_frequency_table** %2, align 8
  br label %58

23:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @priv, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 1, %32
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %31, %34
  %36 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %36, i64 %38
  %40 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %39, i32 0, i32 0
  store i64 %35, i64* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %42, i64 %44
  %46 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 8
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %24

50:                                               ; preds = %24
  %51 = load i64, i64* @CPUFREQ_TABLE_END, align 8
  %52 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %52, i64 %54
  %56 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %55, i32 0, i32 0
  store i64 %51, i64* %56, align 8
  %57 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  store %struct.cpufreq_frequency_table* %57, %struct.cpufreq_frequency_table** %2, align 8
  br label %58

58:                                               ; preds = %50, %19
  %59 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %2, align 8
  ret %struct.cpufreq_frequency_table* %59
}

declare dso_local i64 @htp_freq_to_cpu_freq(i32) #1

declare dso_local %struct.cpufreq_frequency_table* @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.cpufreq_frequency_table* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
