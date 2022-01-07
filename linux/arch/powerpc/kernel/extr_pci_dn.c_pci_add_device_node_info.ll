; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_pci_add_device_node_info.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_pci_add_device_node_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, %struct.pci_controller* }
%struct.TYPE_2__ = type { i32 }
%struct.pci_controller = type { i32 }
%struct.device_node = type { %struct.pci_dn* }

@.str = private unnamed_addr constant [26 x i8] c"ibm,pci-config-space-type\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@IODA_INVALID_PE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"vendor-id\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"device-id\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"class-code\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pci_dn* @pci_add_device_node_info(%struct.pci_controller* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.pci_dn*, align 8
  %4 = alloca %struct.pci_controller*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.pci_dn*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_controller* %0, %struct.pci_controller** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = call i32* @of_get_property(%struct.device_node* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pci_dn* @kzalloc(i32 56, i32 %13)
  store %struct.pci_dn* %14, %struct.pci_dn** %9, align 8
  %15 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %16 = icmp eq %struct.pci_dn* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.pci_dn* null, %struct.pci_dn** %3, align 8
  br label %125

18:                                               ; preds = %2
  %19 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = getelementptr inbounds %struct.device_node, %struct.device_node* %20, i32 0, i32 0
  store %struct.pci_dn* %19, %struct.pci_dn** %21, align 8
  %22 = load %struct.pci_controller*, %struct.pci_controller** %4, align 8
  %23 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %24 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %23, i32 0, i32 10
  store %struct.pci_controller* %22, %struct.pci_controller** %24, align 8
  %25 = load i32, i32* @IODA_INVALID_PE, align 4
  %26 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %27 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i32* @of_get_property(%struct.device_node* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %18
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @of_read_number(i32* %33, i32 1)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %39 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %44 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %32, %18
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call i32* @of_get_property(%struct.device_node* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %47, i32** %7, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @of_read_number(i32* %51, i32 1)
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 0, %53 ]
  %56 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %57 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.device_node*, %struct.device_node** %5, align 8
  %59 = call i32* @of_get_property(%struct.device_node* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i32* %59, i32** %7, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @of_read_number(i32* %63, i32 1)
  br label %66

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %62
  %67 = phi i32 [ %64, %62 ], [ 0, %65 ]
  %68 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %69 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 4
  %70 = load %struct.device_node*, %struct.device_node** %5, align 8
  %71 = call i32* @of_get_property(%struct.device_node* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %71, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @of_read_number(i32* %75, i32 1)
  br label %78

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %74
  %79 = phi i32 [ %76, %74 ], [ 0, %77 ]
  %80 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %81 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i32*, i32** %6, align 8
  %86 = call i32 @of_read_number(i32* %85, i32 1)
  %87 = icmp eq i32 %86, 1
  br label %88

88:                                               ; preds = %84, %78
  %89 = phi i1 [ false, %78 ], [ %87, %84 ]
  %90 = zext i1 %89 to i32
  %91 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %92 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  %93 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %94 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %93, i32 0, i32 7
  %95 = call i32 @INIT_LIST_HEAD(i32* %94)
  %96 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %97 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %96, i32 0, i32 6
  %98 = call i32 @INIT_LIST_HEAD(i32* %97)
  %99 = load %struct.device_node*, %struct.device_node** %5, align 8
  %100 = call %struct.device_node* @of_get_parent(%struct.device_node* %99)
  store %struct.device_node* %100, %struct.device_node** %8, align 8
  %101 = load %struct.device_node*, %struct.device_node** %8, align 8
  %102 = icmp ne %struct.device_node* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %88
  %104 = load %struct.device_node*, %struct.device_node** %8, align 8
  %105 = call %struct.TYPE_2__* @PCI_DN(%struct.device_node* %104)
  br label %107

106:                                              ; preds = %88
  br label %107

107:                                              ; preds = %106, %103
  %108 = phi %struct.TYPE_2__* [ %105, %103 ], [ null, %106 ]
  %109 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %110 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %109, i32 0, i32 5
  store %struct.TYPE_2__* %108, %struct.TYPE_2__** %110, align 8
  %111 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %112 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %111, i32 0, i32 5
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = icmp ne %struct.TYPE_2__* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %117 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %116, i32 0, i32 6
  %118 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %119 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %118, i32 0, i32 5
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = call i32 @list_add_tail(i32* %117, i32* %121)
  br label %123

123:                                              ; preds = %115, %107
  %124 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  store %struct.pci_dn* %124, %struct.pci_dn** %3, align 8
  br label %125

125:                                              ; preds = %123, %17
  %126 = load %struct.pci_dn*, %struct.pci_dn** %3, align 8
  ret %struct.pci_dn* %126
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.pci_dn* @kzalloc(i32, i32) #1

declare dso_local i32 @of_read_number(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local %struct.TYPE_2__* @PCI_DN(%struct.device_node*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
