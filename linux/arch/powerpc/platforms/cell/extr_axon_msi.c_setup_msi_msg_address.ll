; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_axon_msi.c_setup_msi_msg_address.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_axon_msi.c_setup_msi_msg_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.msi_msg = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.msi_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"axon_msi: no pci_dn found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"msi-address-64\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"msi-address-32\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"axon_msi: no msi-address-(32|64) properties found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"axon_msi: malformed msi-address-(32|64) property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.msi_msg*)* @setup_msi_msg_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_msi_msg_address(%struct.pci_dev* %0, %struct.msi_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.msi_msg*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.msi_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.msi_msg* %1, %struct.msi_msg** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_device_to_OF_node(%struct.pci_dev* %10)
  %12 = call %struct.device_node* @of_node_get(i32 %11)
  store %struct.device_node* %12, %struct.device_node** %6, align 8
  %13 = load %struct.device_node*, %struct.device_node** %6, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %91

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = call %struct.msi_desc* @first_pci_msi_entry(%struct.pci_dev* %22)
  store %struct.msi_desc* %23, %struct.msi_desc** %7, align 8
  br label %24

24:                                               ; preds = %47, %21
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = icmp ne %struct.device_node* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %24
  %28 = load %struct.msi_desc*, %struct.msi_desc** %7, align 8
  %29 = getelementptr inbounds %struct.msi_desc, %struct.msi_desc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.device_node*, %struct.device_node** %6, align 8
  %35 = call i32* @of_get_property(%struct.device_node* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %50

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.device_node*, %struct.device_node** %6, align 8
  %42 = call i32* @of_get_property(%struct.device_node* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %8)
  store i32* %42, i32** %9, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %50

46:                                               ; preds = %40
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.device_node*, %struct.device_node** %6, align 8
  %49 = call %struct.device_node* @of_get_next_parent(%struct.device_node* %48)
  store %struct.device_node* %49, %struct.device_node** %6, align 8
  br label %24

50:                                               ; preds = %45, %38, %24
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %91

59:                                               ; preds = %50
  %60 = load i32, i32* %8, align 4
  switch i32 %60, label %80 [
    i32 8, label %61
    i32 4, label %72
  ]

61:                                               ; preds = %59
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.msi_msg*, %struct.msi_msg** %5, align 8
  %66 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.msi_msg*, %struct.msi_msg** %5, align 8
  %71 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %88

72:                                               ; preds = %59
  %73 = load %struct.msi_msg*, %struct.msi_msg** %5, align 8
  %74 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %73, i32 0, i32 1
  store i32 0, i32* %74, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.msi_msg*, %struct.msi_msg** %5, align 8
  %79 = getelementptr inbounds %struct.msi_msg, %struct.msi_msg* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %88

80:                                               ; preds = %59
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = call i32 @dev_dbg(i32* %82, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.device_node*, %struct.device_node** %6, align 8
  %85 = call i32 @of_node_put(%struct.device_node* %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %91

88:                                               ; preds = %72, %61
  %89 = load %struct.device_node*, %struct.device_node** %6, align 8
  %90 = call i32 @of_node_put(%struct.device_node* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %80, %53, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.device_node* @of_node_get(i32) #1

declare dso_local i32 @pci_device_to_OF_node(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.msi_desc* @first_pci_msi_entry(%struct.pci_dev*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_get_next_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
