; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_pci_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_macio.c_pata_macio_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.pata_macio_priv = type { i32*, %struct.pci_dev*, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Cannot find OF device node for controller\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Cannot enable controller PCI device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"pata-macio\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Cannot obtain PCI resources\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pata_macio_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_macio_pci_attach(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.pata_macio_priv*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %9)
  store %struct.device_node* %10, %struct.device_node** %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %7, align 8
  %12 = icmp eq %struct.device_node* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %21 = call i64 @pcim_enable_device(%struct.pci_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 1
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %78

29:                                               ; preds = %19
  %30 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.pata_macio_priv* @devm_kzalloc(i32* %31, i32 24, i32 %32)
  store %struct.pata_macio_priv* %33, %struct.pata_macio_priv** %6, align 8
  %34 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %35 = icmp ne %struct.pata_macio_priv* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %78

39:                                               ; preds = %29
  %40 = load %struct.device_node*, %struct.device_node** %7, align 8
  %41 = call i32 @of_node_get(%struct.device_node* %40)
  %42 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %43 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %46 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %45, i32 0, i32 1
  store %struct.pci_dev* %44, %struct.pci_dev** %46, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 1
  %49 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %50 = getelementptr inbounds %struct.pata_macio_priv, %struct.pata_macio_priv* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = call i64 @pci_request_regions(%struct.pci_dev* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %39
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 1
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %78

60:                                               ; preds = %39
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = call i64 @pci_resource_start(%struct.pci_dev* %61, i32 0)
  store i64 %62, i64* %8, align 8
  %63 = load %struct.pata_macio_priv*, %struct.pata_macio_priv** %6, align 8
  %64 = load i64, i64* %8, align 8
  %65 = add nsw i64 %64, 8192
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, 4096
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %70 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @pata_macio_common_init(%struct.pata_macio_priv* %63, i64 %65, i64 %67, i64 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %60
  %75 = load i32, i32* @ENXIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %74, %54, %36, %23, %13
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.pata_macio_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i64 @pci_request_regions(%struct.pci_dev*, i8*) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pata_macio_common_init(%struct.pata_macio_priv*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
