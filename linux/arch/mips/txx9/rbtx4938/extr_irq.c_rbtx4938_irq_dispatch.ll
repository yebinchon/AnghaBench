; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/txx9/rbtx4938/extr_irq.c_rbtx4938_irq_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/txx9/rbtx4938/extr_irq.c_rbtx4938_irq_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUSF_IP7 = common dso_local global i32 0, align 4
@MIPS_CPU_IRQ_BASE = common dso_local global i32 0, align 4
@STATUSF_IP2 = common dso_local global i32 0, align 4
@RBTX4938_IRQ_IOCINT = common dso_local global i32 0, align 4
@STATUSF_IP1 = common dso_local global i32 0, align 4
@STATUSF_IP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rbtx4938_irq_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rbtx4938_irq_dispatch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @STATUSF_IP7, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @MIPS_CPU_IRQ_BASE, align 4
  %10 = add nsw i32 %9, 7
  store i32 %10, i32* %3, align 4
  br label %45

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @STATUSF_IP2, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = call i32 (...) @txx9_irq()
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @RBTX4938_IRQ_IOCINT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @toshiba_rbtx4938_irq_nested(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %16
  br label %44

25:                                               ; preds = %11
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @STATUSF_IP1, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @MIPS_CPU_IRQ_BASE, align 4
  %32 = add nsw i32 %31, 0
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %25
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @STATUSF_IP0, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @MIPS_CPU_IRQ_BASE, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %38
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %24
  br label %45

45:                                               ; preds = %44, %8
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @txx9_irq(...) #1

declare dso_local i32 @toshiba_rbtx4938_irq_nested(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
