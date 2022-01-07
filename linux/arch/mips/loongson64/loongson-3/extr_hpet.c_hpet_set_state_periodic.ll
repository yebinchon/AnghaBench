; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_hpet.c_hpet_set_state_periodic.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/loongson64/loongson-3/extr_hpet.c_hpet_set_state_periodic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@hpet_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"set clock event to periodic mode!\0A\00", align 1
@HPET_T0_CFG = common dso_local global i32 0, align 4
@HPET_TN_LEVEL = common dso_local global i32 0, align 4
@HPET_TN_ENABLE = common dso_local global i32 0, align 4
@HPET_TN_PERIODIC = common dso_local global i32 0, align 4
@HPET_TN_SETVAL = common dso_local global i32 0, align 4
@HPET_TN_32BIT = common dso_local global i32 0, align 4
@HPET_T0_CMP = common dso_local global i32 0, align 4
@HPET_COMPARE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @hpet_set_state_periodic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_set_state_periodic(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  %3 = alloca i32, align 4
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %4 = call i32 @spin_lock(i32* @hpet_lock)
  %5 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @hpet_stop_counter()
  %7 = load i32, i32* @HPET_T0_CFG, align 4
  %8 = call i32 @hpet_read(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @HPET_TN_LEVEL, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @HPET_TN_ENABLE, align 4
  %14 = load i32, i32* @HPET_TN_PERIODIC, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @HPET_TN_SETVAL, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @HPET_TN_32BIT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* @HPET_T0_CFG, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @hpet_write(i32 %22, i32 %23)
  %25 = load i32, i32* @HPET_T0_CMP, align 4
  %26 = load i32, i32* @HPET_COMPARE_VAL, align 4
  %27 = call i32 @hpet_write(i32 %25, i32 %26)
  %28 = call i32 @udelay(i32 1)
  %29 = load i32, i32* @HPET_T0_CMP, align 4
  %30 = load i32, i32* @HPET_COMPARE_VAL, align 4
  %31 = call i32 @hpet_write(i32 %29, i32 %30)
  %32 = call i32 (...) @hpet_start_counter()
  %33 = call i32 @spin_unlock(i32* @hpet_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @hpet_stop_counter(...) #1

declare dso_local i32 @hpet_read(i32) #1

declare dso_local i32 @hpet_write(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hpet_start_counter(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
