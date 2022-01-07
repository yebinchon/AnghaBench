; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_do_af_flr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_do_af_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32*)* }
%struct.pci_dn = type { i32 }
%struct.eeh_dev = type { i64 }

@ENOTTY = common dso_local global i32 0, align 4
@eeh_ops = common dso_local global %struct.TYPE_2__* null, align 8
@PCI_AF_CAP = common dso_local global i64 0, align 8
@PCI_AF_CAP_TP = common dso_local global i32 0, align 4
@PCI_AF_CAP_FLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"AF\00", align 1
@PCI_AF_CTRL = common dso_local global i64 0, align 8
@PCI_AF_STATUS_TP = common dso_local global i32 0, align 4
@PCI_AF_CTRL_FLR = common dso_local global i32 0, align 4
@EEH_PE_RST_HOLD_TIME = common dso_local global i32 0, align 4
@EEH_PE_RST_SETTLE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dn*, i32)* @pnv_eeh_do_af_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_eeh_do_af_flr(%struct.pci_dn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.eeh_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dn* %0, %struct.pci_dn** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %9 = call %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn* %8)
  store %struct.eeh_dev* %9, %struct.eeh_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %11 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOTTY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %83

21:                                               ; preds = %2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %23, align 8
  %25 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %26 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %27 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCI_AF_CAP, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 %24(%struct.pci_dn* %25, i64 %30, i32 1, i32* %7)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PCI_AF_CAP_TP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PCI_AF_CAP_FLR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36, %21
  %42 = load i32, i32* @ENOTTY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %83

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  switch i32 %45, label %82 [
    i32 128, label %46
    i32 129, label %46
    i32 130, label %69
  ]

46:                                               ; preds = %44, %44
  %47 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %48 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %49 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PCI_AF_CTRL, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* @PCI_AF_STATUS_TP, align 4
  %54 = shl i32 %53, 8
  %55 = call i32 @pnv_eeh_wait_for_pending(%struct.pci_dn* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %54)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32)** %57, align 8
  %59 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %60 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %61 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCI_AF_CTRL, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i32, i32* @PCI_AF_CTRL_FLR, align 4
  %66 = call i32 %58(%struct.pci_dn* %59, i64 %64, i32 1, i32 %65)
  %67 = load i32, i32* @EEH_PE_RST_HOLD_TIME, align 4
  %68 = call i32 @msleep(i32 %67)
  br label %82

69:                                               ; preds = %44
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32)** %71, align 8
  %73 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %74 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %75 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PCI_AF_CTRL, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 %72(%struct.pci_dn* %73, i64 %78, i32 1, i32 0)
  %80 = load i32, i32* @EEH_PE_RST_SETTLE_TIME, align 4
  %81 = call i32 @msleep(i32 %80)
  br label %82

82:                                               ; preds = %44, %69, %46
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %41, %18
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.eeh_dev* @pdn_to_eeh_dev(%struct.pci_dn*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pnv_eeh_wait_for_pending(%struct.pci_dn*, i8*, i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
