; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/generic/extr_irq.c_get_c0_perfcount_int.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/generic/extr_irq.c_get_c0_perfcount_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_has_veic = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Unimplemented!\00", align 1
@cp0_perfcount_irq = common dso_local global i32 0, align 4
@MIPS_CPU_IRQ_BASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_c0_perfcount_int() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 (...) @mips_gic_present()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 (...) @gic_get_c0_perfcount_int()
  store i32 %5, i32* %1, align 4
  br label %21

6:                                                ; preds = %0
  %7 = load i64, i64* @cpu_has_veic, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %20

11:                                               ; preds = %6
  %12 = load i32, i32* @cp0_perfcount_irq, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @MIPS_CPU_IRQ_BASE, align 4
  %16 = load i32, i32* @cp0_perfcount_irq, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %1, align 4
  br label %19

18:                                               ; preds = %11
  store i32 -1, i32* %1, align 4
  br label %19

19:                                               ; preds = %18, %14
  br label %20

20:                                               ; preds = %19, %9
  br label %21

21:                                               ; preds = %20, %4
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i64 @mips_gic_present(...) #1

declare dso_local i32 @gic_get_c0_perfcount_int(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
