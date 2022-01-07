; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-orion5x/extr_ts78xx-setup.c_ts78xx_fpga_load_devices.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-orion5x/extr_ts78xx-setup.c_ts78xx_fpga_load_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ts78xx_fpga = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ts78xx_fpga_load_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts78xx_fpga_load_devices() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 0, i32 2, i32 0), align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %14

5:                                                ; preds = %0
  %6 = call i32 (...) @ts78xx_ts_rtc_load()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 0, i32 2, i32 0), align 4
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* %2, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10, %0
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 0, i32 1, i32 0), align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = call i32 (...) @ts78xx_ts_nand_load()
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 0, i32 1, i32 0), align 4
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 0, i32 0, i32 0), align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = call i32 (...) @ts78xx_ts_rng_load()
  store i32 %30, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ts78xx_fpga, i32 0, i32 0, i32 0, i32 0), align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %2, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %26
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @ts78xx_ts_rtc_load(...) #1

declare dso_local i32 @ts78xx_ts_nand_load(...) #1

declare dso_local i32 @ts78xx_ts_rng_load(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
