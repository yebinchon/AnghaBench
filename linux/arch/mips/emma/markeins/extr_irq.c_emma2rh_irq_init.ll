; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/emma/markeins/extr_irq.c_emma2rh_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/emma/markeins/extr_irq.c_emma2rh_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_EMMA2RH_IRQ = common dso_local global i64 0, align 8
@EMMA2RH_IRQ_BASE = common dso_local global i64 0, align 8
@emma2rh_irq_controller = common dso_local global i32 0, align 4
@handle_level_irq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"level\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emma2rh_irq_init() #0 {
  %1 = alloca i64, align 8
  store i64 0, i64* %1, align 8
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i64, i64* %1, align 8
  %4 = load i64, i64* @NUM_EMMA2RH_IRQ, align 8
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i64, i64* @EMMA2RH_IRQ_BASE, align 8
  %8 = load i64, i64* %1, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* @handle_level_irq, align 4
  %11 = call i32 @irq_set_chip_and_handler_name(i64 %9, i32* @emma2rh_irq_controller, i32 %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %6
  %13 = load i64, i64* %1, align 8
  %14 = add nsw i64 %13, 1
  store i64 %14, i64* %1, align 8
  br label %2

15:                                               ; preds = %2
  ret void
}

declare dso_local i32 @irq_set_chip_and_handler_name(i64, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
