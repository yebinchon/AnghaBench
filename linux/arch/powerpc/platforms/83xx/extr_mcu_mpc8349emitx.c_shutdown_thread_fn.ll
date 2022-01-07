; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_shutdown_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_shutdown_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcu = type { i32, i32 }

@glob_mcu = common dso_local global %struct.mcu* null, align 8
@MCU_REG_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"MCU status reg read failed.\0A\00", align 1
@MCU_CTRL_BTN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @shutdown_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shutdown_thread_fn(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mcu*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load %struct.mcu*, %struct.mcu** @glob_mcu, align 8
  store %struct.mcu* %5, %struct.mcu** %4, align 8
  br label %6

6:                                                ; preds = %43, %1
  %7 = call i32 (...) @kthread_should_stop()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = load %struct.mcu*, %struct.mcu** %4, align 8
  %12 = getelementptr inbounds %struct.mcu, %struct.mcu* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MCU_REG_CTRL, align 4
  %15 = call i32 @i2c_smbus_read_byte_data(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %10
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %10
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.mcu*, %struct.mcu** %4, align 8
  %23 = getelementptr inbounds %struct.mcu, %struct.mcu* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mcu*, %struct.mcu** %4, align 8
  %25 = getelementptr inbounds %struct.mcu, %struct.mcu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MCU_CTRL_BTN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %20
  %31 = load %struct.mcu*, %struct.mcu** %4, align 8
  %32 = getelementptr inbounds %struct.mcu, %struct.mcu* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MCU_REG_CTRL, align 4
  %35 = load %struct.mcu*, %struct.mcu** %4, align 8
  %36 = getelementptr inbounds %struct.mcu, %struct.mcu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MCU_CTRL_BTN, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @i2c_smbus_write_byte_data(i32 %33, i32 %34, i32 %40)
  %42 = call i32 (...) @ctrl_alt_del()
  br label %43

43:                                               ; preds = %30, %20
  %44 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %45 = call i32 @set_current_state(i32 %44)
  %46 = load i32, i32* @HZ, align 4
  %47 = call i32 @schedule_timeout(i32 %46)
  br label %6

48:                                               ; preds = %6
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @ctrl_alt_del(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
