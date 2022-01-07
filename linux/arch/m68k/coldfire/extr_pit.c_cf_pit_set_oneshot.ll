; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_pit.c_cf_pit_set_oneshot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/coldfire/extr_pit.c_cf_pit_set_oneshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@MCFPIT_PCSR_DISABLE = common dso_local global i32 0, align 4
@MCFPIT_PCSR = common dso_local global i32 0, align 4
@MCFPIT_PCSR_EN = common dso_local global i32 0, align 4
@MCFPIT_PCSR_PIE = common dso_local global i32 0, align 4
@MCFPIT_PCSR_OVW = common dso_local global i32 0, align 4
@MCFPIT_PCSR_CLK64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clock_event_device*)* @cf_pit_set_oneshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_pit_set_oneshot(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %3 = load i32, i32* @MCFPIT_PCSR_DISABLE, align 4
  %4 = load i32, i32* @MCFPIT_PCSR, align 4
  %5 = call i32 @TA(i32 %4)
  %6 = call i32 @__raw_writew(i32 %3, i32 %5)
  %7 = load i32, i32* @MCFPIT_PCSR_EN, align 4
  %8 = load i32, i32* @MCFPIT_PCSR_PIE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MCFPIT_PCSR_OVW, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @MCFPIT_PCSR_CLK64, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MCFPIT_PCSR, align 4
  %15 = call i32 @TA(i32 %14)
  %16 = call i32 @__raw_writew(i32 %13, i32 %15)
  ret i32 0
}

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @TA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
