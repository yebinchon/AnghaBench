; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcu = type { i32 }
%struct.i2c_client = type { i32 }

@shutdown_thread = common dso_local global i32 0, align 4
@dev_attr_status = common dso_local global i32 0, align 4
@glob_mcu = common dso_local global %struct.mcu* null, align 8
@pm_power_off = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mcu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcu_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.mcu*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call %struct.mcu* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.mcu* %7, %struct.mcu** %4, align 8
  %8 = load i32, i32* @shutdown_thread, align 4
  %9 = call i32 @kthread_stop(i32 %8)
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call i32 @device_remove_file(i32* %11, i32* @dev_attr_status)
  %13 = load %struct.mcu*, %struct.mcu** @glob_mcu, align 8
  %14 = load %struct.mcu*, %struct.mcu** %4, align 8
  %15 = icmp eq %struct.mcu* %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32* null, i32** @pm_power_off, align 8
  store %struct.mcu* null, %struct.mcu** @glob_mcu, align 8
  br label %17

17:                                               ; preds = %16, %1
  %18 = load %struct.mcu*, %struct.mcu** %4, align 8
  %19 = call i32 @mcu_gpiochip_remove(%struct.mcu* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %17
  %25 = load %struct.mcu*, %struct.mcu** %4, align 8
  %26 = call i32 @kfree(%struct.mcu* %25)
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.mcu* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @mcu_gpiochip_remove(%struct.mcu*) #1

declare dso_local i32 @kfree(%struct.mcu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
