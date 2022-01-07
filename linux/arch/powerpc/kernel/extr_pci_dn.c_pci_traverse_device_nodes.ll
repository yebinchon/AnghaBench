; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_pci_traverse_device_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci_dn.c_pci_traverse_device_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { %struct.device_node*, %struct.device_node*, %struct.device_node* }

@.str = private unnamed_addr constant [11 x i8] c"class-code\00", align 1
@PCI_CLASS_BRIDGE_PCI = common dso_local global i32 0, align 4
@PCI_CLASS_BRIDGE_CARDBUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @pci_traverse_device_nodes(%struct.device_node* %0, i8* (%struct.device_node*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i8* (%struct.device_node*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i8* (%struct.device_node*, i8*)* %1, i8* (%struct.device_node*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = getelementptr inbounds %struct.device_node, %struct.device_node* %13, i32 0, i32 2
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %8, align 8
  br label %16

16:                                               ; preds = %92, %3
  %17 = load %struct.device_node*, %struct.device_node** %8, align 8
  %18 = icmp ne %struct.device_node* %17, null
  br i1 %18, label %19, label %94

19:                                               ; preds = %16
  store i32 0, i32* %12, align 4
  store %struct.device_node* null, %struct.device_node** %9, align 8
  %20 = load %struct.device_node*, %struct.device_node** %8, align 8
  %21 = call i32* @of_get_property(%struct.device_node* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %21, i32** %11, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @of_read_number(i32* %25, i32 1)
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i8* (%struct.device_node*, i8*)*, i8* (%struct.device_node*, i8*)** %6, align 8
  %29 = icmp ne i8* (%struct.device_node*, i8*)* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i8* (%struct.device_node*, i8*)*, i8* (%struct.device_node*, i8*)** %6, align 8
  %32 = load %struct.device_node*, %struct.device_node** %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i8* %31(%struct.device_node* %32, i8* %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i8*, i8** %10, align 8
  store i8* %38, i8** %4, align 8
  br label %95

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %27
  %41 = load %struct.device_node*, %struct.device_node** %8, align 8
  %42 = getelementptr inbounds %struct.device_node, %struct.device_node* %41, i32 0, i32 2
  %43 = load %struct.device_node*, %struct.device_node** %42, align 8
  %44 = icmp ne %struct.device_node* %43, null
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load i32, i32* %12, align 4
  %47 = ashr i32 %46, 8
  %48 = load i32, i32* @PCI_CLASS_BRIDGE_PCI, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  %52 = ashr i32 %51, 8
  %53 = load i32, i32* @PCI_CLASS_BRIDGE_CARDBUS, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %50, %45
  %56 = load %struct.device_node*, %struct.device_node** %8, align 8
  %57 = getelementptr inbounds %struct.device_node, %struct.device_node* %56, i32 0, i32 2
  %58 = load %struct.device_node*, %struct.device_node** %57, align 8
  store %struct.device_node* %58, %struct.device_node** %9, align 8
  br label %69

59:                                               ; preds = %50, %40
  %60 = load %struct.device_node*, %struct.device_node** %8, align 8
  %61 = getelementptr inbounds %struct.device_node, %struct.device_node* %60, i32 0, i32 0
  %62 = load %struct.device_node*, %struct.device_node** %61, align 8
  %63 = icmp ne %struct.device_node* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.device_node*, %struct.device_node** %8, align 8
  %66 = getelementptr inbounds %struct.device_node, %struct.device_node* %65, i32 0, i32 0
  %67 = load %struct.device_node*, %struct.device_node** %66, align 8
  store %struct.device_node* %67, %struct.device_node** %9, align 8
  br label %68

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %68, %55
  %70 = load %struct.device_node*, %struct.device_node** %9, align 8
  %71 = icmp ne %struct.device_node* %70, null
  br i1 %71, label %91, label %72

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %82, %72
  %74 = load %struct.device_node*, %struct.device_node** %8, align 8
  %75 = getelementptr inbounds %struct.device_node, %struct.device_node* %74, i32 0, i32 1
  %76 = load %struct.device_node*, %struct.device_node** %75, align 8
  store %struct.device_node* %76, %struct.device_node** %8, align 8
  %77 = load %struct.device_node*, %struct.device_node** %8, align 8
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = icmp eq %struct.device_node* %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i8* null, i8** %4, align 8
  br label %95

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.device_node*, %struct.device_node** %8, align 8
  %84 = getelementptr inbounds %struct.device_node, %struct.device_node* %83, i32 0, i32 0
  %85 = load %struct.device_node*, %struct.device_node** %84, align 8
  %86 = icmp eq %struct.device_node* %85, null
  br i1 %86, label %73, label %87

87:                                               ; preds = %82
  %88 = load %struct.device_node*, %struct.device_node** %8, align 8
  %89 = getelementptr inbounds %struct.device_node, %struct.device_node* %88, i32 0, i32 0
  %90 = load %struct.device_node*, %struct.device_node** %89, align 8
  store %struct.device_node* %90, %struct.device_node** %9, align 8
  br label %91

91:                                               ; preds = %87, %69
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %93, %struct.device_node** %8, align 8
  br label %16

94:                                               ; preds = %16
  store i8* null, i8** %4, align 8
  br label %95

95:                                               ; preds = %94, %80, %37
  %96 = load i8*, i8** %4, align 8
  ret i8* %96
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_read_number(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
