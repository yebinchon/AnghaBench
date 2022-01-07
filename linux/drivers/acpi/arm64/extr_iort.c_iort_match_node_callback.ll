; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/arm64/extr_iort.c_iort_match_node_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/arm64/extr_iort.c_iort_match_node_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_iort_node = type { i64, i64 }
%struct.device = type { i32 }
%struct.acpi_buffer = type { i32, i32*, i32 }
%struct.acpi_device = type { i32 }
%struct.acpi_iort_named_component = type { i32 }
%struct.acpi_iort_root_complex = type { i64 }
%struct.pci_bus = type { i32 }

@AE_NOT_FOUND = common dso_local global i32 0, align 4
@ACPI_IORT_NODE_NAMED_COMPONENT = common dso_local global i64 0, align 8
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_FULL_PATHNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Can't get device full path name\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ACPI_IORT_NODE_PCI_ROOT_COMPLEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_iort_node*, i8*)* @iort_match_node_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iort_match_node_callback(%struct.acpi_iort_node* %0, i8* %1) #0 {
  %3 = alloca %struct.acpi_iort_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca %struct.acpi_iort_named_component*, align 8
  %10 = alloca %struct.acpi_iort_root_complex*, align 8
  %11 = alloca %struct.pci_bus*, align 8
  store %struct.acpi_iort_node* %0, %struct.acpi_iort_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.device*
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_iort_node, %struct.acpi_iort_node* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ACPI_IORT_NODE_NAMED_COMPONENT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %2
  %21 = bitcast %struct.acpi_buffer* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 24, i1 false)
  %22 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %23 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %23, i32* %22, align 8
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.acpi_device* @to_acpi_device_node(i32 %26)
  store %struct.acpi_device* %27, %struct.acpi_device** %8, align 8
  %28 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %29 = icmp ne %struct.acpi_device* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  br label %91

31:                                               ; preds = %20
  %32 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ACPI_FULL_PATHNAME, align 4
  %36 = call i32 @acpi_get_name(i32 %34, i32 %35, %struct.acpi_buffer* %7)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @ACPI_FAILURE(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @dev_warn(%struct.device* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %91

43:                                               ; preds = %31
  %44 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %3, align 8
  %45 = getelementptr inbounds %struct.acpi_iort_node, %struct.acpi_iort_node* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.acpi_iort_named_component*
  store %struct.acpi_iort_named_component* %47, %struct.acpi_iort_named_component** %9, align 8
  %48 = load %struct.acpi_iort_named_component*, %struct.acpi_iort_named_component** %9, align 8
  %49 = getelementptr inbounds %struct.acpi_iort_named_component, %struct.acpi_iort_named_component* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @strcmp(i32 %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %43
  %56 = load i32, i32* @AE_OK, align 4
  br label %59

57:                                               ; preds = %43
  %58 = load i32, i32* @AE_NOT_FOUND, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %6, align 4
  %61 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @acpi_os_free(i32 %62)
  br label %90

64:                                               ; preds = %2
  %65 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %3, align 8
  %66 = getelementptr inbounds %struct.acpi_iort_node, %struct.acpi_iort_node* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ACPI_IORT_NODE_PCI_ROOT_COMPLEX, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call %struct.pci_bus* @to_pci_bus(%struct.device* %71)
  store %struct.pci_bus* %72, %struct.pci_bus** %11, align 8
  %73 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %3, align 8
  %74 = getelementptr inbounds %struct.acpi_iort_node, %struct.acpi_iort_node* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.acpi_iort_root_complex*
  store %struct.acpi_iort_root_complex* %76, %struct.acpi_iort_root_complex** %10, align 8
  %77 = load %struct.acpi_iort_root_complex*, %struct.acpi_iort_root_complex** %10, align 8
  %78 = getelementptr inbounds %struct.acpi_iort_root_complex, %struct.acpi_iort_root_complex* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.pci_bus*, %struct.pci_bus** %11, align 8
  %81 = call i64 @pci_domain_nr(%struct.pci_bus* %80)
  %82 = icmp eq i64 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %70
  %84 = load i32, i32* @AE_OK, align 4
  br label %87

85:                                               ; preds = %70
  %86 = load i32, i32* @AE_NOT_FOUND, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %64
  br label %90

90:                                               ; preds = %89, %59
  br label %91

91:                                               ; preds = %90, %40, %30
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.acpi_device* @to_acpi_device_node(i32) #2

declare dso_local i32 @acpi_get_name(i32, i32, %struct.acpi_buffer*) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32 @strcmp(i32, i32) #2

declare dso_local i32 @acpi_os_free(i32) #2

declare dso_local %struct.pci_bus* @to_pci_bus(%struct.device*) #2

declare dso_local i64 @pci_domain_nr(%struct.pci_bus*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
