; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evrgnini.c_acpi_ev_system_memory_region_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evrgnini.c_acpi_ev_system_memory_region_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_mem_space_context = type { i32, i32, i64, i32 }

@ev_system_memory_region_setup = common dso_local global i32 0, align 4
@ACPI_REGION_DEACTIVATE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_system_memory_region_setup(i64 %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %struct.acpi_mem_space_context*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %union.acpi_operand_object*
  store %union.acpi_operand_object* %13, %union.acpi_operand_object** %10, align 8
  %14 = load i32, i32* @ev_system_memory_region_setup, align 4
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @ACPI_REGION_DEACTIVATE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %4
  %20 = load i8**, i8*** %9, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i8**, i8*** %9, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = bitcast i8* %25 to %struct.acpi_mem_space_context*
  store %struct.acpi_mem_space_context* %26, %struct.acpi_mem_space_context** %11, align 8
  %27 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %11, align 8
  %28 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %11, align 8
  %33 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %11, align 8
  %36 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @acpi_os_unmap_memory(i32 %34, i64 %37)
  br label %39

39:                                               ; preds = %31, %23
  %40 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %11, align 8
  %41 = call i32 @ACPI_FREE(%struct.acpi_mem_space_context* %40)
  %42 = load i8**, i8*** %9, align 8
  store i8* null, i8** %42, align 8
  br label %43

43:                                               ; preds = %39, %19
  %44 = load i32, i32* @AE_OK, align 4
  %45 = call i32 @return_ACPI_STATUS(i32 %44)
  br label %46

46:                                               ; preds = %43, %4
  %47 = call %struct.acpi_mem_space_context* @ACPI_ALLOCATE_ZEROED(i32 24)
  store %struct.acpi_mem_space_context* %47, %struct.acpi_mem_space_context** %11, align 8
  %48 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %11, align 8
  %49 = icmp ne %struct.acpi_mem_space_context* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* @AE_NO_MEMORY, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_2__*
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %11, align 8
  %59 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %61 = bitcast %union.acpi_operand_object* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %11, align 8
  %65 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %11, align 8
  %67 = bitcast %struct.acpi_mem_space_context* %66 to i8*
  %68 = load i8**, i8*** %9, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* @AE_OK, align 4
  %70 = call i32 @return_ACPI_STATUS(i32 %69)
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_os_unmap_memory(i32, i64) #1

declare dso_local i32 @ACPI_FREE(%struct.acpi_mem_space_context*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %struct.acpi_mem_space_context* @ACPI_ALLOCATE_ZEROED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
