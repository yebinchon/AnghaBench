; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci2.c_grpci2_pci_flow_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci2.c_grpci2_pci_flow_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grpci2_priv = type { i64, i32, i32*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.irq_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*)* }

@grpci2priv = common dso_local global %struct.grpci2_priv* null, align 8
@STS_ERR_IRQ = common dso_local global i32 0, align 4
@STS_INTSTS_BIT = common dso_local global i32 0, align 4
@CTRL_HOSTINT = common dso_local global i32 0, align 4
@STS_IDMA = common dso_local global i32 0, align 4
@STS_IDMAERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @grpci2_pci_flow_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grpci2_pci_flow_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.grpci2_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %9 = load %struct.grpci2_priv*, %struct.grpci2_priv** @grpci2priv, align 8
  store %struct.grpci2_priv* %9, %struct.grpci2_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.grpci2_priv*, %struct.grpci2_priv** %3, align 8
  %11 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @REGLOAD(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.grpci2_priv*, %struct.grpci2_priv** %3, align 8
  %17 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @REGLOAD(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @STS_ERR_IRQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load %struct.grpci2_priv*, %struct.grpci2_priv** %3, align 8
  %28 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @generic_handle_irq(i32 %29)
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %26, %1
  %32 = load i32, i32* %7, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* @STS_INTSTS_BIT, align 4
  %35 = lshr i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @CTRL_HOSTINT, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load %struct.grpci2_priv*, %struct.grpci2_priv** %3, align 8
  %54 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @generic_handle_irq(i32 %59)
  br label %61

61:                                               ; preds = %52, %46
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %43

65:                                               ; preds = %43
  store i32 1, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %31
  %67 = load %struct.grpci2_priv*, %struct.grpci2_priv** %3, align 8
  %68 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @STS_IDMA, align 4
  %74 = load i32, i32* @STS_IDMAERR, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.grpci2_priv*, %struct.grpci2_priv** %3, align 8
  %80 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @generic_handle_irq(i32 %81)
  store i32 1, i32* %5, align 4
  br label %83

83:                                               ; preds = %78, %71, %66
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %88 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %91, align 8
  %93 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %94 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %93, i32 0, i32 0
  %95 = call i32 %92(%struct.TYPE_6__* %94)
  br label %96

96:                                               ; preds = %86, %83
  ret void
}

declare dso_local i32 @REGLOAD(i32) #1

declare dso_local i32 @generic_handle_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
