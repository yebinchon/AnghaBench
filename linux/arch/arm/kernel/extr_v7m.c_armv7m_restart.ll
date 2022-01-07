; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/kernel/extr_v7m.c_armv7m_restart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/kernel/extr_v7m.c_armv7m_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V7M_SCB_AIRCR_VECTKEY = common dso_local global i32 0, align 4
@V7M_SCB_AIRCR_SYSRESETREQ = common dso_local global i32 0, align 4
@BASEADDR_V7M_SCB = common dso_local global i64 0, align 8
@V7M_SCB_AIRCR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @armv7m_restart(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = call i32 (...) @dsb()
  %6 = load i32, i32* @V7M_SCB_AIRCR_VECTKEY, align 4
  %7 = load i32, i32* @V7M_SCB_AIRCR_SYSRESETREQ, align 4
  %8 = or i32 %6, %7
  %9 = load i64, i64* @BASEADDR_V7M_SCB, align 8
  %10 = load i64, i64* @V7M_SCB_AIRCR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @__raw_writel(i32 %8, i64 %11)
  %13 = call i32 (...) @dsb()
  ret void
}

declare dso_local i32 @dsb(...) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
