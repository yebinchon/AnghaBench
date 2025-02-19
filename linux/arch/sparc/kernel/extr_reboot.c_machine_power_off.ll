; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_reboot.c_machine_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_reboot.c_machine_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@of_console_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@scons_pwroff = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @machine_power_off() #0 {
  %1 = load i32, i32* @of_console_device, align 4
  %2 = call i32 @of_node_is_type(i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i64, i64* @scons_pwroff, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %0
  %8 = call i32 (...) @prom_halt_power_off()
  br label %9

9:                                                ; preds = %7, %4
  %10 = call i32 (...) @prom_halt()
  ret void
}

declare dso_local i32 @of_node_is_type(i32, i8*) #1

declare dso_local i32 @prom_halt_power_off(...) #1

declare dso_local i32 @prom_halt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
