; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2416-cpufreq.c_s3c2416_cpufreq_get_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_s3c2416-cpufreq.c_s3c2416_cpufreq_get_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c2416_data = type { i32, i64 }

@s3c2416_cpufreq = common dso_local global %struct.s3c2416_data zeroinitializer, align 8
@FREQ_DVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @s3c2416_cpufreq_get_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c2416_cpufreq_get_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.s3c2416_data*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.s3c2416_data* @s3c2416_cpufreq, %struct.s3c2416_data** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  %9 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %10 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = load i32, i32* @FREQ_DVS, align 4
  store i32 %14, i32* %2, align 4
  br label %21

15:                                               ; preds = %8
  %16 = load %struct.s3c2416_data*, %struct.s3c2416_data** %4, align 8
  %17 = getelementptr inbounds %struct.s3c2416_data, %struct.s3c2416_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @clk_get_rate(i32 %18)
  %20 = sdiv i32 %19, 1000
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %13, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @clk_get_rate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
