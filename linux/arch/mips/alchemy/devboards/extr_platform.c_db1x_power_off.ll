; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_platform.c_db1x_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/devboards/extr_platform.c_db1x_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCSR_RESETS = common dso_local global i32 0, align 4
@BCSR_SYSTEM = common dso_local global i32 0, align 4
@BCSR_SYSTEM_PWROFF = common dso_local global i32 0, align 4
@BCSR_SYSTEM_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @db1x_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db1x_power_off() #0 {
  %1 = load i32, i32* @BCSR_RESETS, align 4
  %2 = call i32 @bcsr_write(i32 %1, i32 0)
  %3 = load i32, i32* @BCSR_SYSTEM, align 4
  %4 = load i32, i32* @BCSR_SYSTEM_PWROFF, align 4
  %5 = load i32, i32* @BCSR_SYSTEM_RESET, align 4
  %6 = or i32 %4, %5
  %7 = call i32 @bcsr_write(i32 %3, i32 %6)
  br label %8

8:                                                ; preds = %0, %8
  %9 = call i32 (...) @cpu_wait()
  br label %8
}

declare dso_local i32 @bcsr_write(i32, i32) #1

declare dso_local i32 @cpu_wait(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
