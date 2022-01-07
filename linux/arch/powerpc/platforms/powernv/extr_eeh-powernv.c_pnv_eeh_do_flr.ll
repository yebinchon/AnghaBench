; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_do_flr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_eeh-powernv.c_pnv_eeh_do_flr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32*)* }
%struct.pci_dn = type { i32 }
%struct.eeh_dev = type { i64 }

@ENOTTY = common dso_local global i32 0, align 4
@eeh_ops = common dso_local global %struct.TYPE_2__* null, align 8
@PCI_EXP_DEVCAP = common dso_local global i64 0, align 8
@PCI_EXP_DEVCAP_FLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PCI_EXP_DEVSTA = common dso_local global i64 0, align 8
@PCI_EXP_DEVSTA_TRPND = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL = common dso_local global i64 0, align 8
@PCI_EXP_DEVCTL_BCR_FLR = common dso_local global i32 0, align 4
@EEH_PE_RST_HOLD_TIME = common dso_local global i32 0, align 4
@EEH_PE_RST_SETTLE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dn*, i32)* @pnv_eeh_do_flr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_eeh_do_flr(%struct.pci_dn* %0, i32 %1) #0 {
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
  br label %105

21:                                               ; preds = %2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %23, align 8
  %25 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %26 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %27 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCI_EXP_DEVCAP, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 %24(%struct.pci_dn* %25, i64 %30, i32 4, i32* %7)
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @PCI_EXP_DEVCAP_FLR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* @ENOTTY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %105

39:                                               ; preds = %21
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %104 [
    i32 128, label %41
    i32 129, label %41
    i32 130, label %76
  ]

41:                                               ; preds = %39, %39
  %42 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %43 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %44 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PCI_EXP_DEVSTA, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* @PCI_EXP_DEVSTA_TRPND, align 4
  %49 = call i32 @pnv_eeh_wait_for_pending(%struct.pci_dn* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %47, i32 %48)
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %51, align 8
  %53 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %54 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %55 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 %52(%struct.pci_dn* %53, i64 %58, i32 4, i32* %7)
  %60 = load i32, i32* @PCI_EXP_DEVCTL_BCR_FLR, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32)** %64, align 8
  %66 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %67 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %68 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = call i32 %65(%struct.pci_dn* %66, i64 %71, i32 4, i32 %72)
  %74 = load i32, i32* @EEH_PE_RST_HOLD_TIME, align 4
  %75 = call i32 @msleep(i32 %74)
  br label %104

76:                                               ; preds = %39
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32 (%struct.pci_dn*, i64, i32, i32*)*, i32 (%struct.pci_dn*, i64, i32, i32*)** %78, align 8
  %80 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %81 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %82 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 %79(%struct.pci_dn* %80, i64 %85, i32 4, i32* %7)
  %87 = load i32, i32* @PCI_EXP_DEVCTL_BCR_FLR, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** @eeh_ops, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (%struct.pci_dn*, i64, i32, i32)*, i32 (%struct.pci_dn*, i64, i32, i32)** %92, align 8
  %94 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %95 = load %struct.eeh_dev*, %struct.eeh_dev** %6, align 8
  %96 = getelementptr inbounds %struct.eeh_dev, %struct.eeh_dev* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @PCI_EXP_DEVCTL, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i32, i32* %7, align 4
  %101 = call i32 %93(%struct.pci_dn* %94, i64 %99, i32 4, i32 %100)
  %102 = load i32, i32* @EEH_PE_RST_SETTLE_TIME, align 4
  %103 = call i32 @msleep(i32 %102)
  br label %104

104:                                              ; preds = %39, %76, %41
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %36, %18
  %106 = load i32, i32* %3, align 4
  ret i32 %106
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
