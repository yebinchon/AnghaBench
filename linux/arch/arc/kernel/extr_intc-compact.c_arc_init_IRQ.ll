; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_intc-compact.c_arc_init_IRQ.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_intc-compact.c_arc_init_IRQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_ARC_COMPACT_IRQ_LEVELS = common dso_local global i32 0, align 4
@TIMER0_IRQ = common dso_local global i32 0, align 4
@AUX_IRQ_LEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Level-2 interrupts bitset %x\0A\00", align 1
@NR_CPU_IRQS = common dso_local global i32 0, align 4
@AUX_IENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_init_IRQ() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = load i32, i32* @CONFIG_ARC_COMPACT_IRQ_LEVELS, align 4
  %5 = call i32 @IS_ENABLED(i32 %4)
  %6 = load i32, i32* @TIMER0_IRQ, align 4
  %7 = shl i32 %5, %6
  %8 = load i32, i32* %1, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @AUX_IRQ_LEV, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @write_aux_reg(i32 %10, i32 %11)
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* %1, align 4
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i32, i32* @TIMER0_IRQ, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %35, %18
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @NR_CPU_IRQS, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load i32, i32* @AUX_IENABLE, align 4
  %26 = call i32 @read_aux_reg(i32 %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @AUX_IENABLE, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @write_aux_reg(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %2, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %2, align 4
  br label %20

38:                                               ; preds = %20
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @write_aux_reg(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @read_aux_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
