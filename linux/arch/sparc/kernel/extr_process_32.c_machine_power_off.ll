; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_32.c_machine_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_process_32.c_machine_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@auxio_power_register = common dso_local global i64 0, align 8
@of_console_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@scons_pwroff = common dso_local global i64 0, align 8
@AUXIO_POWER_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_power_off() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @auxio_power_register, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %0
  %5 = load i32, i32* @of_console_device, align 4
  %6 = call i32 @of_node_is_type(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i64, i64* @scons_pwroff, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8, %4
  %12 = load i64, i64* @auxio_power_register, align 8
  %13 = call i32 @sbus_readb(i64 %12)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @AUXIO_POWER_OFF, align 4
  %15 = load i32, i32* %1, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = load i64, i64* @auxio_power_register, align 8
  %19 = call i32 @sbus_writeb(i32 %17, i64 %18)
  br label %20

20:                                               ; preds = %11, %8, %0
  %21 = call i32 (...) @machine_halt()
  ret void
}

declare dso_local i32 @of_node_is_type(i32, i8*) #1

declare dso_local i32 @sbus_readb(i64) #1

declare dso_local i32 @sbus_writeb(i32, i64) #1

declare dso_local i32 @machine_halt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
