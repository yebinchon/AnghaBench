; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-cobalt.c_pcibios_map_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/pci/extr_fixup-cobalt.c_pcibios_map_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@cobalt_board_id = common dso_local global i64 0, align 8
@COBALT_BRD_ID_QUBE1 = common dso_local global i64 0, align 8
@irq_tab_qube1 = common dso_local global i32* null, align 8
@COBALT_BRD_ID_RAQ2 = common dso_local global i64 0, align 8
@irq_tab_raq2 = common dso_local global i32* null, align 8
@irq_tab_cobalt = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcibios_map_irq(%struct.pci_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* @cobalt_board_id, align 8
  %9 = load i64, i64* @COBALT_BRD_ID_QUBE1, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32*, i32** @irq_tab_qube1, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load i64, i64* @cobalt_board_id, align 8
  %18 = load i64, i64* @COBALT_BRD_ID_RAQ2, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32*, i32** @irq_tab_raq2, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %30

25:                                               ; preds = %16
  %26 = load i32*, i32** @irq_tab_cobalt, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %25, %20, %11
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
