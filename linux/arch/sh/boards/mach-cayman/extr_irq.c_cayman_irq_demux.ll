; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-cayman/extr_irq.c_cayman_irq_demux.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-cayman/extr_irq.c_cayman_irq_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@intc_evt_to_irq = common dso_local global i32* null, align 8
@SMSC_IRQ = common dso_local global i32 0, align 4
@EPLD_STATUS_BASE = common dso_local global i64 0, align 8
@EPLD_MASK_BASE = common dso_local global i64 0, align 8
@START_EXT_IRQS = common dso_local global i32 0, align 4
@PCI2_IRQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cayman_irq_demux(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32*, i32** @intc_evt_to_irq, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SMSC_IRQ, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %1
  %17 = load i64, i64* @EPLD_STATUS_BASE, align 8
  %18 = call i32 @__raw_readl(i64 %17)
  %19 = load i64, i64* @EPLD_MASK_BASE, align 8
  %20 = call i32 @__raw_readl(i64 %19)
  %21 = and i32 %18, %20
  %22 = and i32 %21, 255
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %4, align 8
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %47

27:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i64, i64* %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 1, %33
  %35 = sext i32 %34 to i64
  %36 = and i64 %32, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %43

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %28

43:                                               ; preds = %38, %28
  %44 = load i32, i32* @START_EXT_IRQS, align 4
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %26
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @PCI2_IRQ, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %48
  %53 = load i64, i64* @EPLD_STATUS_BASE, align 8
  %54 = add i64 %53, 12
  %55 = call i32 @__raw_readl(i64 %54)
  %56 = load i64, i64* @EPLD_MASK_BASE, align 8
  %57 = add i64 %56, 12
  %58 = call i32 @__raw_readl(i64 %57)
  %59 = and i32 %55, %58
  %60 = and i32 %59, 255
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %86

65:                                               ; preds = %52
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %78, %65
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = shl i32 1, %71
  %73 = sext i32 %72 to i64
  %74 = and i64 %70, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %81

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %66

81:                                               ; preds = %76, %66
  %82 = load i32, i32* @START_EXT_IRQS, align 4
  %83 = add nsw i32 %82, 24
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %64
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @__raw_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
