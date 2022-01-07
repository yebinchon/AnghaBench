; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-integrator/extr_core.c_cm_control.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-integrator/extr_core.c_cm_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cm_lock = common dso_local global i32 0, align 4
@cm_base = common dso_local global i64 0, align 8
@INTEGRATOR_HDR_CTRL_OFFSET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cm_control(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @raw_spin_lock_irqsave(i32* @cm_lock, i64 %7)
  %9 = load i64, i64* @cm_base, align 8
  %10 = load i64, i64* @INTEGRATOR_HDR_CTRL_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  %13 = load i32, i32* %3, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %16, %17
  %19 = load i64, i64* @cm_base, align 8
  %20 = load i64, i64* @INTEGRATOR_HDR_CTRL_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %18, i64 %21)
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @raw_spin_unlock_irqrestore(i32* @cm_lock, i64 %23)
  ret void
}

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
