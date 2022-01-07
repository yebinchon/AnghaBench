; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci1.c_grpci1_pci_flow_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci1.c_grpci1_pci_flow_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grpci1_priv = type { i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.irq_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*)* }

@grpci1priv = common dso_local global %struct.grpci1_priv* null, align 8
@IRQ_MASK_BIT = common dso_local global i32 0, align 4
@IRQ_ALL_ERRORS = common dso_local global i32 0, align 4
@IRQ_INTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @grpci1_pci_flow_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grpci1_pci_flow_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.grpci1_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %7 = load %struct.grpci1_priv*, %struct.grpci1_priv** @grpci1priv, align 8
  store %struct.grpci1_priv* %7, %struct.grpci1_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.grpci1_priv*, %struct.grpci1_priv** %3, align 8
  %9 = getelementptr inbounds %struct.grpci1_priv, %struct.grpci1_priv* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @REGLOAD(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IRQ_MASK_BIT, align 4
  %16 = lshr i32 %14, %15
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @IRQ_ALL_ERRORS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.grpci1_priv*, %struct.grpci1_priv** %3, align 8
  %25 = getelementptr inbounds %struct.grpci1_priv, %struct.grpci1_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @generic_handle_irq(i32 %26)
  store i32 1, i32* %5, align 4
  br label %28

28:                                               ; preds = %23, %1
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @IRQ_INTX, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %53, %33
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.grpci1_priv*, %struct.grpci1_priv** %3, align 8
  %45 = getelementptr inbounds %struct.grpci1_priv, %struct.grpci1_priv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @generic_handle_irq(i32 %50)
  br label %52

52:                                               ; preds = %43, %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %34

56:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %62 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %65, align 8
  %67 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %68 = getelementptr inbounds %struct.irq_desc, %struct.irq_desc* %67, i32 0, i32 0
  %69 = call i32 %66(%struct.TYPE_6__* %68)
  br label %70

70:                                               ; preds = %60, %57
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
