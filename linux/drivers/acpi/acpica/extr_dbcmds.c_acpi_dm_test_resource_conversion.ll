; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_dm_test_resource_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbcmds.c_acpi_dm_test_resource_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i8* }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Resource Conversion Comparison:\0A\00", align 1
@ACPI_ALLOCATE_LOCAL_BUFFER = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"Could not obtain %s: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"AcpiGetCurrentResources failed: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"AcpiRsCreateAmlResources failed: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_namespace_node*, i8*)* @acpi_dm_test_resource_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_dm_test_resource_conversion(%struct.acpi_namespace_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_buffer, align 8
  %8 = alloca %struct.acpi_buffer, align 8
  %9 = alloca %struct.acpi_buffer, align 8
  %10 = alloca %union.acpi_object*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** @ACPI_ALLOCATE_LOCAL_BUFFER, align 8
  %13 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i8*, i8** @ACPI_ALLOCATE_LOCAL_BUFFER, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i8*, i8** @ACPI_ALLOCATE_LOCAL_BUFFER, align 8
  %17 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @acpi_evaluate_object(%struct.acpi_namespace_node* %18, i8* %19, i32* null, %struct.acpi_buffer* %7)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @acpi_format_exception(i32 %26)
  %28 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %79

30:                                               ; preds = %2
  %31 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %32 = call i32 @acpi_get_current_resources(%struct.acpi_namespace_node* %31, %struct.acpi_buffer* %8)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @acpi_format_exception(i32 %37)
  %39 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  br label %74

40:                                               ; preds = %30
  %41 = call i32 @acpi_rs_create_aml_resources(%struct.acpi_buffer* %8, %struct.acpi_buffer* %9)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @acpi_format_exception(i32 %46)
  %48 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  br label %70

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %51 = load %union.acpi_object*, %union.acpi_object** %50, align 8
  store %union.acpi_object* %51, %union.acpi_object** %10, align 8
  %52 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %53 = bitcast %union.acpi_object* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %57 = bitcast %union.acpi_object* %56 to %struct.TYPE_2__*
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %62 = load %union.acpi_object*, %union.acpi_object** %61, align 8
  %63 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = call i32 @acpi_dm_compare_aml_resources(i32 %55, i32 %60, %union.acpi_object* %62, i32 %65)
  %67 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %9, i32 0, i32 0
  %68 = load %union.acpi_object*, %union.acpi_object** %67, align 8
  %69 = call i32 @ACPI_FREE(%union.acpi_object* %68)
  br label %70

70:                                               ; preds = %49, %45
  %71 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %72 = load %union.acpi_object*, %union.acpi_object** %71, align 8
  %73 = call i32 @ACPI_FREE(%union.acpi_object* %72)
  br label %74

74:                                               ; preds = %70, %36
  %75 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %7, i32 0, i32 0
  %76 = load %union.acpi_object*, %union.acpi_object** %75, align 8
  %77 = call i32 @ACPI_FREE(%union.acpi_object* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %24
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @acpi_evaluate_object(%struct.acpi_namespace_node*, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_format_exception(i32) #1

declare dso_local i32 @acpi_get_current_resources(%struct.acpi_namespace_node*, %struct.acpi_buffer*) #1

declare dso_local i32 @acpi_rs_create_aml_resources(%struct.acpi_buffer*, %struct.acpi_buffer*) #1

declare dso_local i32 @acpi_dm_compare_aml_resources(i32, i32, %union.acpi_object*, i32) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
