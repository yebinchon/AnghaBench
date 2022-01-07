; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_query_ddw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_query_ddw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ddw_query_response = type { i32 }
%struct.device_node = type { i32 }
%struct.pci_dn = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"ibm,query-pe-dma-windows(%x) %x %x %x returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*, %struct.ddw_query_response*)* @query_ddw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_ddw(%struct.pci_dev* %0, i32* %1, %struct.ddw_query_response* %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ddw_query_response*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pci_dn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ddw_query_response* %2, %struct.ddw_query_response** %6, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %12)
  store %struct.device_node* %13, %struct.device_node** %7, align 8
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %14)
  store %struct.pci_dn* %15, %struct.pci_dn** %8, align 8
  %16 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %17 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %22 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = shl i32 %23, 16
  %25 = load %struct.pci_dn*, %struct.pci_dn** %8, align 8
  %26 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 8
  %29 = or i32 %24, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ddw_query_response*, %struct.ddw_query_response** %6, align 8
  %34 = bitcast %struct.ddw_query_response* %33 to i32*
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @BUID_HI(i32 %36)
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @BUID_LO(i32 %38)
  %40 = call i32 @rtas_call(i32 %32, i32 3, i32 5, i32* %34, i32 %35, i32 %37, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @BUID_HI(i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @BUID_LO(i32 %49)
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @dev_info(i32* %42, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %48, i32 %50, i32 %51)
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @BUID_HI(i32) #1

declare dso_local i32 @BUID_LO(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
