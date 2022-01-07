; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_insert_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/nfit/extr_core.c_acpi_nfit_insert_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_nfit_desc = type { i32 }
%struct.nd_region_desc = type { %struct.resource* }
%struct.resource = type { i8*, i32, i32, i32, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORES_DESC_PERSISTENT_MEMORY = common dso_local global i32 0, align 4
@REGION_INTERSECTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Persistent Memory\00", align 1
@iomem_resource = common dso_local global i32 0, align 4
@acpi_nfit_remove_resource = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_nfit_desc*, %struct.nd_region_desc*)* @acpi_nfit_insert_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_nfit_insert_resource(%struct.acpi_nfit_desc* %0, %struct.nd_region_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_nfit_desc*, align 8
  %5 = alloca %struct.nd_region_desc*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.acpi_nfit_desc* %0, %struct.acpi_nfit_desc** %4, align 8
  store %struct.nd_region_desc* %1, %struct.nd_region_desc** %5, align 8
  %10 = load %struct.nd_region_desc*, %struct.nd_region_desc** %5, align 8
  %11 = getelementptr inbounds %struct.nd_region_desc, %struct.nd_region_desc* %10, i32 0, i32 0
  %12 = load %struct.resource*, %struct.resource** %11, align 8
  store %struct.resource* %12, %struct.resource** %7, align 8
  %13 = load %struct.resource*, %struct.resource** %7, align 8
  %14 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.resource*, %struct.resource** %7, align 8
  %17 = call i32 @resource_size(%struct.resource* %16)
  %18 = load i32, i32* @IORESOURCE_MEM, align 4
  %19 = load i32, i32* @IORES_DESC_PERSISTENT_MEMORY, align 4
  %20 = call i32 @region_intersects(i32 %15, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @REGION_INTERSECTS, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

25:                                               ; preds = %2
  %26 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.resource* @devm_kzalloc(i32 %28, i32 24, i32 %29)
  store %struct.resource* %30, %struct.resource** %6, align 8
  %31 = load %struct.resource*, %struct.resource** %6, align 8
  %32 = icmp ne %struct.resource* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %73

36:                                               ; preds = %25
  %37 = load %struct.resource*, %struct.resource** %6, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.resource*, %struct.resource** %7, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.resource*, %struct.resource** %7, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.resource*, %struct.resource** %6, align 8
  %48 = getelementptr inbounds %struct.resource, %struct.resource* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = load %struct.resource*, %struct.resource** %6, align 8
  %51 = getelementptr inbounds %struct.resource, %struct.resource* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @IORES_DESC_PERSISTENT_MEMORY, align 4
  %53 = load %struct.resource*, %struct.resource** %6, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = call i32 @insert_resource(i32* @iomem_resource, %struct.resource* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %36
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %3, align 4
  br label %73

61:                                               ; preds = %36
  %62 = load %struct.acpi_nfit_desc*, %struct.acpi_nfit_desc** %4, align 8
  %63 = getelementptr inbounds %struct.acpi_nfit_desc, %struct.acpi_nfit_desc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @acpi_nfit_remove_resource, align 4
  %66 = load %struct.resource*, %struct.resource** %6, align 8
  %67 = call i32 @devm_add_action_or_reset(i32 %64, i32 %65, %struct.resource* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %70, %59, %33, %24
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @region_intersects(i32, i32, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local %struct.resource* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @insert_resource(i32*, %struct.resource*) #1

declare dso_local i32 @devm_add_action_or_reset(i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
