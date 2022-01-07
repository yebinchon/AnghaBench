; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_kernel.c_leon_update_virq_handling.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_kernel.c_leon_update_virq_handling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEON_DO_ACK_HW = common dso_local global i64 0, align 8
@leon_irq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @leon_update_virq_handling(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @irq_get_chip_data(i32 %10)
  store i64 %11, i64* %9, align 8
  %12 = load i64, i64* @LEON_DO_ACK_HW, align 8
  %13 = xor i64 %12, -1
  %14 = load i64, i64* %9, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i64, i64* @LEON_DO_ACK_HW, align 8
  %20 = load i64, i64* %9, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %18, %4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @irq_set_chip_and_handler_name(i32 %23, i32* @leon_irq, i32 %24, i8* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i64, i64* %9, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @irq_set_chip_data(i32 %27, i8* %29)
  ret void
}

declare dso_local i64 @irq_get_chip_data(i32) #1

declare dso_local i32 @irq_set_chip_and_handler_name(i32, i32*, i32, i8*) #1

declare dso_local i32 @irq_set_chip_data(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
