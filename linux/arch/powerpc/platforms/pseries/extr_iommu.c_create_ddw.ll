; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_create_ddw.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_iommu.c_create_ddw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ddw_create_response = type { i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.pci_dn = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [94 x i8] c"ibm,create-pe-dma-window(%x) %x %x %x %x %x returned %d (liobn = 0x%x starting addr = %x %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32*, %struct.ddw_create_response*, i32, i32)* @create_ddw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_ddw(%struct.pci_dev* %0, i32* %1, %struct.ddw_create_response* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ddw_create_response*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.device_node*, align 8
  %12 = alloca %struct.pci_dn*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.ddw_create_response* %2, %struct.ddw_create_response** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %17 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %16)
  store %struct.device_node* %17, %struct.device_node** %11, align 8
  %18 = load %struct.device_node*, %struct.device_node** %11, align 8
  %19 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %18)
  store %struct.pci_dn* %19, %struct.pci_dn** %12, align 8
  %20 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %21 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %26 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 %27, 16
  %29 = load %struct.pci_dn*, %struct.pci_dn** %12, align 8
  %30 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  %33 = or i32 %28, %32
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %48, %5
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ddw_create_response*, %struct.ddw_create_response** %8, align 8
  %39 = bitcast %struct.ddw_create_response* %38 to i32*
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @BUID_HI(i32 %41)
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @BUID_LO(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @rtas_call(i32 %37, i32 5, i32 4, i32* %39, i32 %40, i32 %42, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %15, align 4
  %50 = call i64 @rtas_busy_delay(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %34, label %52

52:                                               ; preds = %48
  %53 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @BUID_HI(i32 %59)
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @BUID_LO(i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.ddw_create_response*, %struct.ddw_create_response** %8, align 8
  %67 = getelementptr inbounds %struct.ddw_create_response, %struct.ddw_create_response* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ddw_create_response*, %struct.ddw_create_response** %8, align 8
  %70 = getelementptr inbounds %struct.ddw_create_response, %struct.ddw_create_response* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ddw_create_response*, %struct.ddw_create_response** %8, align 8
  %73 = getelementptr inbounds %struct.ddw_create_response, %struct.ddw_create_response* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_info(i32* %54, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58, i32 %60, i32 %62, i32 %63, i32 %64, i32 %65, i32 %68, i32 %71, i32 %74)
  %76 = load i32, i32* %15, align 4
  ret i32 %76
}

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUID_HI(i32) #1

declare dso_local i32 @BUID_LO(i32) #1

declare dso_local i64 @rtas_busy_delay(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
