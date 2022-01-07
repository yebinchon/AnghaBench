; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/rb532/extr_devices.c_set_latch_u5.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/rb532/extr_devices.c_set_latch_u5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8, i32, i32 }

@dev3 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_latch_u5(i8 zeroext %0, i8 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store i8 %1, i8* %4, align 1
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev3, i32 0, i32 1), i64 %6)
  %8 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev3, i32 0, i32 0), align 4
  %9 = zext i8 %8 to i32
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = load i8, i8* %4, align 1
  %14 = zext i8 %13 to i32
  %15 = xor i32 %14, -1
  %16 = and i32 %12, %15
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev3, i32 0, i32 0), align 4
  %18 = load i8, i8* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev3, i32 0, i32 0), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev3, i32 0, i32 2), align 4
  %20 = call i32 @writeb(i8 zeroext %18, i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dev3, i32 0, i32 1), i64 %21)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
