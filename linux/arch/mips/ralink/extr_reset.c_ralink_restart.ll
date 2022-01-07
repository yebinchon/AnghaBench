; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ralink/extr_reset.c_ralink_restart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ralink/extr_reset.c_ralink_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_PCI = common dso_local global i32 0, align 4
@RSTCTL_RESET_PCI = common dso_local global i32 0, align 4
@SYSC_REG_RESET_CTRL = common dso_local global i32 0, align 4
@RSTCTL_RESET_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ralink_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ralink_restart(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @CONFIG_PCI, align 4
  %4 = call i64 @IS_ENABLED(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* @RSTCTL_RESET_PCI, align 4
  %8 = load i32, i32* @SYSC_REG_RESET_CTRL, align 4
  %9 = call i32 @rt_sysc_m32(i32 0, i32 %7, i32 %8)
  %10 = call i32 @mdelay(i32 50)
  br label %11

11:                                               ; preds = %6, %1
  %12 = call i32 (...) @local_irq_disable()
  %13 = load i32, i32* @RSTCTL_RESET_SYSTEM, align 4
  %14 = load i32, i32* @SYSC_REG_RESET_CTRL, align 4
  %15 = call i32 @rt_sysc_w32(i32 %13, i32 %14)
  %16 = call i32 (...) @unreachable()
  ret void
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @rt_sysc_m32(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @rt_sysc_w32(i32, i32) #1

declare dso_local i32 @unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
