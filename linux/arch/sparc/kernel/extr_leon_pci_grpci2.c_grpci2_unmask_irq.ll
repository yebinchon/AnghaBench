; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci2.c_grpci2_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci2.c_grpci2_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grpci2_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.irq_data = type { i64 }

@grpci2priv = common dso_local global %struct.grpci2_priv* null, align 8
@grpci2_dev_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @grpci2_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grpci2_unmask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.grpci2_priv*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.grpci2_priv*, %struct.grpci2_priv** @grpci2priv, align 8
  store %struct.grpci2_priv* %6, %struct.grpci2_priv** %5, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = sub i32 %10, 1
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %35

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @grpci2_dev_lock, i64 %16)
  %18 = load %struct.grpci2_priv*, %struct.grpci2_priv** %5, align 8
  %19 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.grpci2_priv*, %struct.grpci2_priv** %5, align 8
  %24 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @REGLOAD(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 1, %29
  %31 = or i32 %28, %30
  %32 = call i32 @REGSTORE(i32 %22, i32 %31)
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* @grpci2_dev_lock, i64 %33)
  br label %35

35:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @REGSTORE(i32, i32) #1

declare dso_local i32 @REGLOAD(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
