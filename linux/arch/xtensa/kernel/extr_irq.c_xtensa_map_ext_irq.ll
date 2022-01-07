; ModuleID = '/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_irq.c_xtensa_map_ext_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/xtensa/kernel/extr_irq.c_xtensa_map_ext_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XCHAL_INTTYPE_MASK_EXTERN_EDGE = common dso_local global i32 0, align 4
@XCHAL_INTTYPE_MASK_EXTERN_LEVEL = common dso_local global i32 0, align 4
@XCHAL_NUM_INTERRUPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xtensa_map_ext_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @XCHAL_INTTYPE_MASK_EXTERN_EDGE, align 4
  %7 = load i32, i32* @XCHAL_INTTYPE_MASK_EXTERN_LEVEL, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %3, align 4
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %16, %12
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = lshr i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %9

28:                                               ; preds = %9
  %29 = load i32, i32* @XCHAL_NUM_INTERRUPTS, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %20
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
