; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac32-cpufreq.c_gpios_set_cpu_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_pmac32-cpufreq.c_gpios_set_cpu_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMAC_FTR_WRITE_GPIO = common dso_local global i32 0, align 4
@voltage_gpio = common dso_local global i32 0, align 4
@PMAC_FTR_READ_GPIO = common dso_local global i32 0, align 4
@frequency_gpio = common dso_local global i32 0, align 4
@slew_done_gpio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gpios_set_cpu_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpios_set_cpu_speed(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* @PMAC_FTR_WRITE_GPIO, align 4
  %9 = load i32, i32* @voltage_gpio, align 4
  %10 = call i32 @pmac_call_feature(i32 %8, i32* null, i32 %9, i32 5)
  %11 = call i32 @local_delay(i32 10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load i32, i32* @PMAC_FTR_READ_GPIO, align 4
  %14 = load i32, i32* @frequency_gpio, align 4
  %15 = call i32 @pmac_call_feature(i32 %13, i32* null, i32 %14, i32 0)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = icmp eq i32 %16, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %47

23:                                               ; preds = %12
  %24 = load i32, i32* @PMAC_FTR_WRITE_GPIO, align 4
  %25 = load i32, i32* @frequency_gpio, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 4, i32 5
  %30 = call i32 @pmac_call_feature(i32 %24, i32* null, i32 %25, i32 %29)
  %31 = call i32 @udelay(i32 200)
  br label %32

32:                                               ; preds = %42, %23
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = icmp sgt i32 %34, 100
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %46

37:                                               ; preds = %32
  %38 = call i32 @local_delay(i32 1)
  %39 = load i32, i32* @PMAC_FTR_READ_GPIO, align 4
  %40 = load i32, i32* @slew_done_gpio, align 4
  %41 = call i32 @pmac_call_feature(i32 %39, i32* null, i32 %40, i32 0)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %32, label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %22
  %48 = load i32, i32* %2, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @PMAC_FTR_WRITE_GPIO, align 4
  %52 = load i32, i32* @voltage_gpio, align 4
  %53 = call i32 @pmac_call_feature(i32 %51, i32* null, i32 %52, i32 4)
  %54 = call i32 @local_delay(i32 10)
  br label %55

55:                                               ; preds = %50, %47
  ret i32 0
}

declare dso_local i32 @pmac_call_feature(i32, i32*, i32, i32) #1

declare dso_local i32 @local_delay(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
