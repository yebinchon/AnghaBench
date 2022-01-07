; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsinit.c_acpi_ns_init_one_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsinit.c_acpi_ns_init_one_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_init_walk_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ns_init_one_object = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Opcode is not deferred [%4.4s] (%s)\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Could not execute arguments for [%4.4s] (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8**)* @acpi_ns_init_one_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_init_one_object(i64 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.acpi_init_walk_info*, align 8
  %13 = alloca %struct.acpi_namespace_node*, align 8
  %14 = alloca %union.acpi_operand_object*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.acpi_init_walk_info*
  store %struct.acpi_init_walk_info* %17, %struct.acpi_init_walk_info** %12, align 8
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %19, %struct.acpi_namespace_node** %13, align 8
  %20 = load i32, i32* @ns_init_one_object, align 4
  %21 = call i32 @ACPI_FUNCTION_NAME(i32 %20)
  %22 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %12, align 8
  %23 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @acpi_ns_get_type(i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %29 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %28)
  store %union.acpi_operand_object* %29, %union.acpi_operand_object** %14, align 8
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  %31 = icmp ne %union.acpi_operand_object* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @AE_OK, align 4
  store i32 %33, i32* %5, align 4
  br label %115

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  switch i32 %35, label %61 [
    i32 128, label %36
    i32 131, label %41
    i32 130, label %46
    i32 132, label %51
    i32 129, label %56
  ]

36:                                               ; preds = %34
  %37 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %12, align 8
  %38 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %63

41:                                               ; preds = %34
  %42 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %12, align 8
  %43 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %63

46:                                               ; preds = %34
  %47 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %12, align 8
  %48 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %63

51:                                               ; preds = %34
  %52 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %12, align 8
  %53 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %63

56:                                               ; preds = %34
  %57 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %12, align 8
  %58 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %63

61:                                               ; preds = %34
  %62 = load i32, i32* @AE_OK, align 4
  store i32 %62, i32* %5, align 4
  br label %115

63:                                               ; preds = %56, %51, %46, %41, %36
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  %65 = bitcast %union.acpi_operand_object* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @AE_OK, align 4
  store i32 %72, i32* %5, align 4
  br label %115

73:                                               ; preds = %63
  %74 = call i32 (...) @acpi_ex_enter_interpreter()
  %75 = load i32, i32* %10, align 4
  switch i32 %75, label %91 [
    i32 130, label %76
    i32 129, label %83
  ]

76:                                               ; preds = %73
  %77 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %12, align 8
  %78 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %14, align 8
  %82 = call i32 @acpi_ds_get_bank_field_arguments(%union.acpi_operand_object* %81)
  store i32 %82, i32* %11, align 4
  br label %100

83:                                               ; preds = %73
  %84 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %12, align 8
  %85 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load i64, i64* %6, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @acpi_ns_init_one_package(i64 %88, i32 %89, i32* null, i32* null)
  store i32 %90, i32* %11, align 4
  br label %100

91:                                               ; preds = %73
  %92 = load i32, i32* @AE_TYPE, align 4
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* @AE_INFO, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %96 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %95)
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @acpi_ut_get_type_name(i32 %97)
  %99 = call i32 @ACPI_EXCEPTION(i32 %98)
  br label %100

100:                                              ; preds = %91, %83, %76
  %101 = load i32, i32* %11, align 4
  %102 = call i64 @ACPI_FAILURE(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load i32, i32* @AE_INFO, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %108 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %107)
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @acpi_ut_get_type_name(i32 %109)
  %111 = call i32 @ACPI_EXCEPTION(i32 %110)
  br label %112

112:                                              ; preds = %104, %100
  %113 = call i32 (...) @acpi_ex_exit_interpreter()
  %114 = load i32, i32* @AE_OK, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %112, %71, %61, %32
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @acpi_ns_get_type(i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

declare dso_local i32 @acpi_ds_get_bank_field_arguments(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ns_init_one_package(i64, i32, i32*, i32*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
