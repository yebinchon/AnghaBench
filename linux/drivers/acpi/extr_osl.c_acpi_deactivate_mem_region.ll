; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_deactivate_mem_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_deactivate_mem_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_mem_space_context = type { i64 }
%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, %union.acpi_operand_object* }
%struct.resource = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%union.acpi_operand_object*, i32, i32*, i8**)* }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_MEMORY = common dso_local global i64 0, align 8
@AOPOBJ_SETUP_COMPLETE = common dso_local global i32 0, align 4
@ACPI_REGION_DEACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @acpi_deactivate_mem_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_deactivate_mem_region(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_mem_space_context**, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  %13 = alloca %union.acpi_operand_object*, align 8
  %14 = alloca %struct.resource*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.resource*
  store %struct.resource* %17, %struct.resource** %14, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(i32 %18)
  store %union.acpi_operand_object* %19, %union.acpi_operand_object** %13, align 8
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %21 = icmp ne %union.acpi_operand_object* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @AE_OK, align 4
  store i32 %23, i32* %5, align 4
  br label %109

24:                                               ; preds = %4
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %26 = bitcast %union.acpi_operand_object* %25 to %struct.TYPE_6__*
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %27, align 8
  store %union.acpi_operand_object* %28, %union.acpi_operand_object** %11, align 8
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %30 = icmp ne %union.acpi_operand_object* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @AE_OK, align 4
  store i32 %32, i32* %5, align 4
  br label %109

33:                                               ; preds = %24
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %35 = bitcast %union.acpi_operand_object* %34 to %struct.TYPE_6__*
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_ADR_SPACE_SYSTEM_MEMORY, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %5, align 4
  br label %109

42:                                               ; preds = %33
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %44 = bitcast %union.acpi_operand_object* %43 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @AE_OK, align 4
  store i32 %51, i32* %5, align 4
  br label %109

52:                                               ; preds = %42
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %54 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %53)
  store %union.acpi_operand_object* %54, %union.acpi_operand_object** %12, align 8
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %56 = icmp ne %union.acpi_operand_object* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @AE_OK, align 4
  store i32 %58, i32* %5, align 4
  br label %109

59:                                               ; preds = %52
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %61 = bitcast %union.acpi_operand_object* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = bitcast i32* %62 to i8*
  %64 = bitcast i8* %63 to %struct.acpi_mem_space_context**
  store %struct.acpi_mem_space_context** %64, %struct.acpi_mem_space_context*** %10, align 8
  %65 = load %struct.acpi_mem_space_context**, %struct.acpi_mem_space_context*** %10, align 8
  %66 = getelementptr inbounds %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %65, i64 0
  %67 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %66, align 8
  %68 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.resource*, %struct.resource** %14, align 8
  %71 = getelementptr inbounds %struct.resource, %struct.resource* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sge i64 %69, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %59
  %75 = load %struct.acpi_mem_space_context**, %struct.acpi_mem_space_context*** %10, align 8
  %76 = getelementptr inbounds %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %75, i64 0
  %77 = load %struct.acpi_mem_space_context*, %struct.acpi_mem_space_context** %76, align 8
  %78 = getelementptr inbounds %struct.acpi_mem_space_context, %struct.acpi_mem_space_context* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.resource*, %struct.resource** %14, align 8
  %81 = getelementptr inbounds %struct.resource, %struct.resource* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %86, label %84

84:                                               ; preds = %74, %59
  %85 = load i32, i32* @AE_OK, align 4
  store i32 %85, i32* %5, align 4
  br label %109

86:                                               ; preds = %74
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %88 = bitcast %union.acpi_operand_object* %87 to %struct.TYPE_5__*
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32 (%union.acpi_operand_object*, i32, i32*, i8**)*, i32 (%union.acpi_operand_object*, i32, i32*, i8**)** %89, align 8
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %92 = load i32, i32* @ACPI_REGION_DEACTIVATE, align 4
  %93 = load %struct.acpi_mem_space_context**, %struct.acpi_mem_space_context*** %10, align 8
  %94 = bitcast %struct.acpi_mem_space_context** %93 to i8**
  %95 = call i32 %90(%union.acpi_operand_object* %91, i32 %92, i32* null, i8** %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = call i64 @ACPI_SUCCESS(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %86
  %100 = load i32, i32* @AOPOBJ_SETUP_COMPLETE, align 4
  %101 = xor i32 %100, -1
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %103 = bitcast %union.acpi_operand_object* %102 to %struct.TYPE_6__*
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %101
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %99, %86
  %108 = load i32, i32* %15, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %84, %57, %50, %40, %31, %22
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
