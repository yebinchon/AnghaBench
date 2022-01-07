; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-footbridge/extr_netwinder-hw.c_wb977_init_irda.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-footbridge/extr_netwinder-hw.c_wb977_init_irda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRDA_IO_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wb977_init_irda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb977_init_irda() #0 {
  %1 = call i32 @wb977_device_select(i32 6)
  %2 = load i32, i32* @IRDA_IO_BASE, align 4
  %3 = call i32 @wb977_ww(i32 96, i32 %2)
  %4 = call i32 @wb977_wb(i32 112, i32 6)
  %5 = call i32 @wb977_wb(i32 113, i32 2)
  %6 = call i32 @wb977_wb(i32 116, i32 0)
  %7 = call i32 @wb977_wb(i32 117, i32 4)
  %8 = call i32 @wb977_wb(i32 240, i32 3)
  %9 = call i32 (...) @wb977_device_enable()
  ret void
}

declare dso_local i32 @wb977_device_select(i32) #1

declare dso_local i32 @wb977_ww(i32, i32) #1

declare dso_local i32 @wb977_wb(i32, i32) #1

declare dso_local i32 @wb977_device_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
