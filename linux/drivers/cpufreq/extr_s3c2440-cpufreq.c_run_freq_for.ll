; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2440-cpufreq.c_run_freq_for.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2440-cpufreq.c_run_freq_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_frequency_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32*, %struct.cpufreq_frequency_table*, i64)* @run_freq_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_freq_for(i64 %0, i64 %1, i32* %2, %struct.cpufreq_frequency_table* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cpufreq_frequency_table*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.cpufreq_frequency_table* %3, %struct.cpufreq_frequency_table** %9, align 8
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %43, %5
  %17 = load i32, i32* %13, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %20, %22
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %43

31:                                               ; preds = %27, %19
  %32 = load i64, i64* %11, align 8
  %33 = udiv i64 %32, 1000
  store i64 %33, i64* %11, align 8
  %34 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %9, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i32 @s3c_cpufreq_addfreq(%struct.cpufreq_frequency_table* %34, i32 %35, i64 %36, i64 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %47

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i32*, i32** %8, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %8, align 8
  %46 = load i32, i32* %44, align 4
  store i32 %46, i32* %13, align 4
  br label %16

47:                                               ; preds = %41, %16
  %48 = load i32, i32* %12, align 4
  ret i32 %48
}

declare dso_local i32 @s3c_cpufreq_addfreq(%struct.cpufreq_frequency_table*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
