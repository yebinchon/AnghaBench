; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_save_bars.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_save_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_dn*, i32, i32, i32*)* }
%struct.pci_dn = type { i32 }
%struct.eeh_dev = type { i32, i32* }

@eeh_ops = common dso_local global %struct.TYPE_2__* null, align 8
@EEH_DEV_BRIDGE = common dso_local global i32 0, align 4
@PCI_COMMAND_MASTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eeh_save_bars(%struct.eeh_dev* %0) #0 {
  %2 = alloca %struct.eeh_dev*, align 8
  %3 = alloca %struct.pci_dn*, align 8
  %4 = alloca i32, align 4
  store %struct.eeh_dev* %0, %struct.eeh_dev** %2, align 8
  %5 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %6 = call %struct.pci_dn* @eeh_dev_to_pdn(%struct.eeh_dev* %5)
  store %struct.pci_dn* %6, %struct.pci_dn** %3, align 8
  %7 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %8 = icmp ne %struct.pci_dn* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %46

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %28, %10
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 16
  br i1 %13, label %14, label %31

14:                                               ; preds = %11
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.pci_dn*, i32, i32, i32*)*, i32 (%struct.pci_dn*, i32, i32, i32*)** %16, align 8
  %18 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 4
  %21 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %22 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 %17(%struct.pci_dn* %18, i32 %20, i32 4, i32* %26)
  br label %28

28:                                               ; preds = %14
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %33 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @EEH_DEV_BRIDGE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = load i32, i32* @PCI_COMMAND_MASTER, align 4
  %40 = load %struct.eeh_dev*, %struct.eeh_dev** %2, align 8
  %41 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %9, %38, %31
  ret void
}

declare dso_local %struct.pci_dn* @eeh_dev_to_pdn(%struct.eeh_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
