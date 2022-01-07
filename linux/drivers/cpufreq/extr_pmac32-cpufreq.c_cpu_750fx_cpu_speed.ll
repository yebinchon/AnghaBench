; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac32-cpufreq.c_cpu_750fx_cpu_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac32-cpufreq.c_cpu_750fx_cpu_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMAC_FTR_WRITE_GPIO = common dso_local global i32 0, align 4
@voltage_gpio = common dso_local global i32 0, align 4
@has_cpu_l2lve = common dso_local global i64 0, align 8
@SPRN_HID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpu_750fx_cpu_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_750fx_cpu_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load i32, i32* @PMAC_FTR_WRITE_GPIO, align 4
  %8 = load i32, i32* @voltage_gpio, align 4
  %9 = call i32 @pmac_call_feature(i32 %7, i32* null, i32 %8, i32 5)
  %10 = call i32 @local_delay(i32 10)
  %11 = load i64, i64* @has_cpu_l2lve, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = load i32, i32* @SPRN_HID2, align 4
  %15 = call i32 @mfspr(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, -8193
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @SPRN_HID2, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @mtspr(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %6
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i64, i64* @has_cpu_l2lve, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* @SPRN_HID2, align 4
  %30 = call i32 @mfspr(i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, 8192
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @SPRN_HID2, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @mtspr(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %25
  %37 = load i32, i32* @PMAC_FTR_WRITE_GPIO, align 4
  %38 = load i32, i32* @voltage_gpio, align 4
  %39 = call i32 @pmac_call_feature(i32 %37, i32* null, i32 %38, i32 4)
  %40 = call i32 @local_delay(i32 10)
  br label %41

41:                                               ; preds = %36, %22
  ret i32 0
}

declare dso_local i32 @pmac_call_feature(i32, i32*, i32, i32) #1

declare dso_local i32 @local_delay(i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
