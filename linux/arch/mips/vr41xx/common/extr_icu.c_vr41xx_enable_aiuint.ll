; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/vr41xx/common/extr_icu.c_vr41xx_enable_aiuint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/vr41xx/common/extr_icu.c_vr41xx_enable_aiuint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }

@AIU_IRQ = common dso_local global i32 0, align 4
@CPU_VR4111 = common dso_local global i64 0, align 8
@CPU_VR4121 = common dso_local global i64 0, align 8
@MAIUINTREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vr41xx_enable_aiuint(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.irq_desc*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @AIU_IRQ, align 4
  %6 = call %struct.irq_desc* @irq_to_desc(i32 %5)
  store %struct.irq_desc* %6, %struct.irq_desc** %3, align 8
  %7 = call i64 (...) @current_cpu_type()
  %8 = load i64, i64* @CPU_VR4111, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = call i64 (...) @current_cpu_type()
  %12 = load i64, i64* @CPU_VR4121, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10, %1
  %15 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %16 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %15, i32 0, i32 0
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @raw_spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* @MAIUINTREG, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @icu1_set(i32 %19, i32 %20)
  %22 = load %struct.irq_desc*, %struct.irq_desc** %3, align 8
  %23 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @raw_spin_unlock_irqrestore(i32* %23, i64 %24)
  br label %26

26:                                               ; preds = %14, %10
  ret void
}

declare dso_local %struct.irq_desc* @irq_to_desc(i32) #1

declare dso_local i64 @current_cpu_type(...) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @icu1_set(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
