; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evrgnini.c_acpi_ev_is_pci_root_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evrgnini.c_acpi_ev_is_pci_root_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%struct.acpi_pnp_device_id = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_pnp_device_id_list = type { i64, %struct.TYPE_2__*, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ev_is_pci_root_bridge(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_pnp_device_id*, align 8
  %6 = alloca %struct.acpi_pnp_device_id_list*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %3, align 8
  %9 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %10 = bitcast %struct.acpi_pnp_device_id** %5 to %struct.acpi_pnp_device_id_list**
  %11 = call i32 @acpi_ut_execute_HID(%struct.acpi_namespace_node* %9, %struct.acpi_pnp_device_id_list** %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @ACPI_FAILURE(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %2, align 8
  br label %66

17:                                               ; preds = %1
  %18 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %5, align 8
  %19 = getelementptr inbounds %struct.acpi_pnp_device_id, %struct.acpi_pnp_device_id* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @acpi_ut_is_pci_root_bridge(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.acpi_pnp_device_id*, %struct.acpi_pnp_device_id** %5, align 8
  %23 = bitcast %struct.acpi_pnp_device_id* %22 to %struct.acpi_pnp_device_id_list*
  %24 = call i32 @ACPI_FREE(%struct.acpi_pnp_device_id_list* %23)
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i64, i64* @TRUE, align 8
  store i64 %28, i64* %2, align 8
  br label %66

29:                                               ; preds = %17
  %30 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %31 = call i32 @acpi_ut_execute_CID(%struct.acpi_namespace_node* %30, %struct.acpi_pnp_device_id_list** %6)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @ACPI_FAILURE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %2, align 8
  br label %66

37:                                               ; preds = %29
  store i64 0, i64* %7, align 8
  br label %38

38:                                               ; preds = %59, %37
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %6, align 8
  %41 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %6, align 8
  %46 = getelementptr inbounds %struct.acpi_pnp_device_id_list, %struct.acpi_pnp_device_id_list* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @acpi_ut_is_pci_root_bridge(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %6, align 8
  %56 = call i32 @ACPI_FREE(%struct.acpi_pnp_device_id_list* %55)
  %57 = load i64, i64* @TRUE, align 8
  store i64 %57, i64* %2, align 8
  br label %66

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %38

62:                                               ; preds = %38
  %63 = load %struct.acpi_pnp_device_id_list*, %struct.acpi_pnp_device_id_list** %6, align 8
  %64 = call i32 @ACPI_FREE(%struct.acpi_pnp_device_id_list* %63)
  %65 = load i64, i64* @FALSE, align 8
  store i64 %65, i64* %2, align 8
  br label %66

66:                                               ; preds = %62, %54, %35, %27, %15
  %67 = load i64, i64* %2, align 8
  ret i64 %67
}

declare dso_local i32 @acpi_ut_execute_HID(%struct.acpi_namespace_node*, %struct.acpi_pnp_device_id_list**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i64 @acpi_ut_is_pci_root_bridge(i32) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_pnp_device_id_list*) #1

declare dso_local i32 @acpi_ut_execute_CID(%struct.acpi_namespace_node*, %struct.acpi_pnp_device_id_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
