; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/arm64/extr_iort.c_iort_pmsi_get_dev_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/arm64/extr_iort.c_iort_pmsi_get_dev_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_iort_node = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@IORT_MSI_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iort_pmsi_get_dev_id(%struct.device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_iort_node*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.acpi_iort_node* @iort_find_dev_node(%struct.device* %9)
  store %struct.acpi_iort_node* %10, %struct.acpi_iort_node** %8, align 8
  %11 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %8, align 8
  %12 = icmp ne %struct.acpi_iort_node* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %8, align 8
  %18 = call i32 @iort_get_id_mapping_index(%struct.acpi_iort_node* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %8, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @iort_node_get_id(%struct.acpi_iort_node* %22, i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %52

28:                                               ; preds = %21
  br label %49

29:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %45, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %8, align 8
  %33 = getelementptr inbounds %struct.acpi_iort_node, %struct.acpi_iort_node* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %30
  %37 = load %struct.acpi_iort_node*, %struct.acpi_iort_node** %8, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @IORT_MSI_TYPE, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @iort_node_map_platform_id(%struct.acpi_iort_node* %37, i32* %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %52

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %30

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48, %28
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %43, %27, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.acpi_iort_node* @iort_find_dev_node(%struct.device*) #1

declare dso_local i32 @iort_get_id_mapping_index(%struct.acpi_iort_node*) #1

declare dso_local i64 @iort_node_get_id(%struct.acpi_iort_node*, i32*, i32) #1

declare dso_local i64 @iort_node_map_platform_id(%struct.acpi_iort_node*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
