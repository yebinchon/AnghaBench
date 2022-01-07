; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_axon_msi.c_find_msi_translator.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_axon_msi.c_find_msi_translator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axon_msic = type { i32 }
%struct.pci_dev = type { i32 }
%struct.irq_domain = type { %struct.axon_msic* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"axon_msi: no pci_dn found\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"msi-translator\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"axon_msi: no msi-translator property found\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"axon_msi: msi-translator doesn't point to a node\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"axon_msi: no irq_domain found for node %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.axon_msic* (%struct.pci_dev*)* @find_msi_translator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.axon_msic* @find_msi_translator(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.axon_msic*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.axon_msic*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.axon_msic* null, %struct.axon_msic** %8, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = call i32 @pci_device_to_OF_node(%struct.pci_dev* %9)
  %11 = call %struct.device_node* @of_node_get(i32 %10)
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.axon_msic* null, %struct.axon_msic** %2, align 8
  br label %70

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %29, %18
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.device_node*, %struct.device_node** %5, align 8
  %24 = call i32* @of_get_property(%struct.device_node* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %24, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %32

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %30)
  store %struct.device_node* %31, %struct.device_node** %5, align 8
  br label %19

32:                                               ; preds = %27, %19
  %33 = load i32*, i32** %7, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %66

39:                                               ; preds = %32
  %40 = load %struct.device_node*, %struct.device_node** %5, align 8
  store %struct.device_node* %40, %struct.device_node** %6, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.device_node* @of_find_node_by_phandle(i32 %42)
  store %struct.device_node* %43, %struct.device_node** %5, align 8
  %44 = load %struct.device_node*, %struct.device_node** %6, align 8
  %45 = call i32 @of_node_put(%struct.device_node* %44)
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = icmp ne %struct.device_node* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  br label %66

52:                                               ; preds = %39
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call %struct.irq_domain* @irq_find_host(%struct.device_node* %53)
  store %struct.irq_domain* %54, %struct.irq_domain** %4, align 8
  %55 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %56 = icmp ne %struct.irq_domain* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %59 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %58, i32 0, i32 0
  %60 = load %struct.device_node*, %struct.device_node** %5, align 8
  %61 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.device_node* %60)
  br label %66

62:                                               ; preds = %52
  %63 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %64 = getelementptr inbounds %struct.irq_domain, %struct.irq_domain* %63, i32 0, i32 0
  %65 = load %struct.axon_msic*, %struct.axon_msic** %64, align 8
  store %struct.axon_msic* %65, %struct.axon_msic** %8, align 8
  br label %66

66:                                               ; preds = %62, %57, %48, %35
  %67 = load %struct.device_node*, %struct.device_node** %5, align 8
  %68 = call i32 @of_node_put(%struct.device_node* %67)
  %69 = load %struct.axon_msic*, %struct.axon_msic** %8, align 8
  store %struct.axon_msic* %69, %struct.axon_msic** %2, align 8
  br label %70

70:                                               ; preds = %66, %14
  %71 = load %struct.axon_msic*, %struct.axon_msic** %2, align 8
  ret %struct.axon_msic* %71
}

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local i32 @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.irq_domain* @irq_find_host(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
