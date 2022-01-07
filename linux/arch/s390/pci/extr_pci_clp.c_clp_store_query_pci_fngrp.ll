; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_store_query_pci_fngrp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/pci/extr_pci_clp.c_clp_store_query_pci_fngrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_dev = type { i32, i32, i32, i32, i32, i32 }
%struct.clp_rsp_query_pci_grp = type { i32, i32, i32, i32, i32, i32 }

@PCIE_SPEED_5_0GT = common dso_local global i32 0, align 4
@PCI_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zpci_dev*, %struct.clp_rsp_query_pci_grp*)* @clp_store_query_pci_fngrp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clp_store_query_pci_fngrp(%struct.zpci_dev* %0, %struct.clp_rsp_query_pci_grp* %1) #0 {
  %3 = alloca %struct.zpci_dev*, align 8
  %4 = alloca %struct.clp_rsp_query_pci_grp*, align 8
  store %struct.zpci_dev* %0, %struct.zpci_dev** %3, align 8
  store %struct.clp_rsp_query_pci_grp* %1, %struct.clp_rsp_query_pci_grp** %4, align 8
  %5 = load %struct.clp_rsp_query_pci_grp*, %struct.clp_rsp_query_pci_grp** %4, align 8
  %6 = getelementptr inbounds %struct.clp_rsp_query_pci_grp, %struct.clp_rsp_query_pci_grp* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 4
  %10 = load %struct.clp_rsp_query_pci_grp*, %struct.clp_rsp_query_pci_grp** %4, align 8
  %11 = getelementptr inbounds %struct.clp_rsp_query_pci_grp, %struct.clp_rsp_query_pci_grp* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.clp_rsp_query_pci_grp*, %struct.clp_rsp_query_pci_grp** %4, align 8
  %16 = getelementptr inbounds %struct.clp_rsp_query_pci_grp, %struct.clp_rsp_query_pci_grp* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.clp_rsp_query_pci_grp*, %struct.clp_rsp_query_pci_grp** %4, align 8
  %21 = getelementptr inbounds %struct.clp_rsp_query_pci_grp, %struct.clp_rsp_query_pci_grp* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %24 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.clp_rsp_query_pci_grp*, %struct.clp_rsp_query_pci_grp** %4, align 8
  %26 = getelementptr inbounds %struct.clp_rsp_query_pci_grp, %struct.clp_rsp_query_pci_grp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.clp_rsp_query_pci_grp*, %struct.clp_rsp_query_pci_grp** %4, align 8
  %31 = getelementptr inbounds %struct.clp_rsp_query_pci_grp, %struct.clp_rsp_query_pci_grp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %37 [
    i32 1, label %33
  ]

33:                                               ; preds = %2
  %34 = load i32, i32* @PCIE_SPEED_5_0GT, align 4
  %35 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %36 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %41

37:                                               ; preds = %2
  %38 = load i32, i32* @PCI_SPEED_UNKNOWN, align 4
  %39 = load %struct.zpci_dev*, %struct.zpci_dev** %3, align 8
  %40 = getelementptr inbounds %struct.zpci_dev, %struct.zpci_dev* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
