; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_pci_of_scan_bus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_pci.c_pci_of_scan_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32 }
%struct.device_node = type { i32 }
%struct.pci_bus = type { %struct.device_node*, i32 }
%struct.pci_dev = type { %struct.device_node*, i32 }

@ofpci_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"scan_bus[%pOF] bus no %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"  * %pOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"dev header type: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_pbm_info*, %struct.device_node*, %struct.pci_bus*)* @pci_of_scan_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_of_scan_bus(%struct.pci_pbm_info* %0, %struct.device_node* %1, %struct.pci_bus* %2) #0 {
  %4 = alloca %struct.pci_pbm_info*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pci_bus*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pci_dev*, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.pci_bus* %2, %struct.pci_bus** %6, align 8
  %13 = load i64, i64* @ofpci_verbose, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %17 = bitcast %struct.pci_bus* %16 to %struct.pci_dev*
  %18 = load %struct.device_node*, %struct.device_node** %5, align 8
  %19 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %20 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct.pci_dev*, i8*, %struct.device_node*, ...) @pci_info(%struct.pci_dev* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.device_node* %18, i32 %21)
  br label %23

23:                                               ; preds = %15, %3
  store %struct.device_node* null, %struct.device_node** %7, align 8
  store i32 -1, i32* %11, align 4
  br label %24

24:                                               ; preds = %85, %66, %55, %45, %23
  %25 = load %struct.device_node*, %struct.device_node** %5, align 8
  %26 = load %struct.device_node*, %struct.device_node** %7, align 8
  %27 = call %struct.device_node* @of_get_next_child(%struct.device_node* %25, %struct.device_node* %26)
  store %struct.device_node* %27, %struct.device_node** %7, align 8
  %28 = icmp ne %struct.device_node* %27, null
  br i1 %28, label %29, label %86

29:                                               ; preds = %24
  %30 = load i64, i64* @ofpci_verbose, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %34 = bitcast %struct.pci_bus* %33 to %struct.pci_dev*
  %35 = load %struct.device_node*, %struct.device_node** %7, align 8
  %36 = call i32 (%struct.pci_dev*, i8*, %struct.device_node*, ...) @pci_info(%struct.pci_dev* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.device_node*, %struct.device_node** %7, align 8
  %39 = call i32* @of_get_property(%struct.device_node* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 20
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %37
  br label %24

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %24

56:                                               ; preds = %46
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %11, align 4
  %58 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %59 = load %struct.device_node*, %struct.device_node** %7, align 8
  %60 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %61 = bitcast %struct.pci_bus* %60 to %struct.pci_dev*
  %62 = load i32, i32* %10, align 4
  %63 = call %struct.pci_dev* @of_create_pci_dev(%struct.pci_pbm_info* %58, %struct.device_node* %59, %struct.pci_dev* %61, i32 %62)
  store %struct.pci_dev* %63, %struct.pci_dev** %12, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %65 = icmp ne %struct.pci_dev* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %24

67:                                               ; preds = %56
  %68 = load i64, i64* @ofpci_verbose, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %72 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load %struct.device_node*, %struct.device_node** %73, align 8
  %75 = call i32 (%struct.pci_dev*, i8*, %struct.device_node*, ...) @pci_info(%struct.pci_dev* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %78 = call i64 @pci_is_bridge(%struct.pci_dev* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %4, align 8
  %82 = load %struct.device_node*, %struct.device_node** %7, align 8
  %83 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  %84 = call i32 @of_scan_pci_bridge(%struct.pci_pbm_info* %81, %struct.device_node* %82, %struct.pci_dev* %83)
  br label %85

85:                                               ; preds = %80, %76
  br label %24

86:                                               ; preds = %24
  ret void
}

declare dso_local i32 @pci_info(%struct.pci_dev*, i8*, %struct.device_node*, ...) #1

declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.pci_dev* @of_create_pci_dev(%struct.pci_pbm_info*, %struct.device_node*, %struct.pci_dev*, i32) #1

declare dso_local i64 @pci_is_bridge(%struct.pci_dev*) #1

declare dso_local i32 @of_scan_pci_bridge(%struct.pci_pbm_info*, %struct.device_node*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
