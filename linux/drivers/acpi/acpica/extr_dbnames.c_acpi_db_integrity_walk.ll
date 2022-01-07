; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_integrity_walk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbnames.c_acpi_db_integrity_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_integrity_info = type { i32, i32 }
%struct.acpi_namespace_node = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%union.acpi_operand_object = type { i64 }

@TRUE = common dso_local global i64 0, align 8
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"Invalid Descriptor Type for Node %p [%s] - is %2.2X should be %2.2X\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_ALIAS = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_METHOD_ALIAS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@ACPI_TYPE_LOCAL_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Invalid Object Type for Node %p, Type = %X\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid AcpiName for Node %p\0A\00", align 1
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"Invalid Descriptor Type for Object %p [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8**)* @acpi_db_integrity_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_db_integrity_walk(i64 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_integrity_info*, align 8
  %11 = alloca %struct.acpi_namespace_node*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.acpi_integrity_info*
  store %struct.acpi_integrity_info* %15, %struct.acpi_integrity_info** %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %17, %struct.acpi_namespace_node** %11, align 8
  %18 = load i64, i64* @TRUE, align 8
  store i64 %18, i64* %13, align 8
  %19 = load %struct.acpi_integrity_info*, %struct.acpi_integrity_info** %10, align 8
  %20 = getelementptr inbounds %struct.acpi_integrity_info, %struct.acpi_integrity_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %63, %4
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %64

26:                                               ; preds = %23
  %27 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %28 = bitcast %struct.acpi_namespace_node* %27 to %union.acpi_operand_object*
  %29 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %28)
  %30 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %34 = bitcast %struct.acpi_namespace_node* %33 to %union.acpi_operand_object*
  %35 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %36 = bitcast %struct.acpi_namespace_node* %35 to %union.acpi_operand_object*
  %37 = call i64 @acpi_ut_get_descriptor_name(%union.acpi_operand_object* %36)
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %39 = bitcast %struct.acpi_namespace_node* %38 to %union.acpi_operand_object*
  %40 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %39)
  %41 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %42 = call i32 (i8*, %union.acpi_operand_object*, ...) @acpi_os_printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), %union.acpi_operand_object* %34, i64 %37, i64 %40, i64 %41)
  %43 = load i32, i32* @AE_OK, align 4
  store i32 %43, i32* %5, align 4
  br label %113

44:                                               ; preds = %26
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %46 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ACPI_TYPE_LOCAL_ALIAS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %44
  %51 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %52 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ACPI_TYPE_LOCAL_METHOD_ALIAS, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50, %44
  %57 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %58 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %60, %struct.acpi_namespace_node** %11, align 8
  br label %63

61:                                               ; preds = %50
  %62 = load i64, i64* @FALSE, align 8
  store i64 %62, i64* %13, align 8
  br label %63

63:                                               ; preds = %61, %56
  br label %23

64:                                               ; preds = %23
  %65 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %66 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ACPI_TYPE_LOCAL_MAX, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %72 = bitcast %struct.acpi_namespace_node* %71 to %union.acpi_operand_object*
  %73 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %74 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 (i8*, %union.acpi_operand_object*, ...) @acpi_os_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %union.acpi_operand_object* %72, i64 %75)
  %77 = load i32, i32* @AE_OK, align 4
  store i32 %77, i32* %5, align 4
  br label %113

78:                                               ; preds = %64
  %79 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %80 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @acpi_ut_valid_nameseg(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %78
  %86 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %87 = bitcast %struct.acpi_namespace_node* %86 to %union.acpi_operand_object*
  %88 = call i32 (i8*, %union.acpi_operand_object*, ...) @acpi_os_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), %union.acpi_operand_object* %87)
  %89 = load i32, i32* @AE_OK, align 4
  store i32 %89, i32* %5, align 4
  br label %113

90:                                               ; preds = %78
  %91 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %92 = bitcast %struct.acpi_namespace_node* %91 to %union.acpi_operand_object*
  %93 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%union.acpi_operand_object* %92)
  store %union.acpi_operand_object* %93, %union.acpi_operand_object** %12, align 8
  %94 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %95 = icmp ne %union.acpi_operand_object* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load %struct.acpi_integrity_info*, %struct.acpi_integrity_info** %10, align 8
  %98 = getelementptr inbounds %struct.acpi_integrity_info, %struct.acpi_integrity_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %102 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %101)
  %103 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %107 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %108 = call i64 @acpi_ut_get_descriptor_name(%union.acpi_operand_object* %107)
  %109 = call i32 (i8*, %union.acpi_operand_object*, ...) @acpi_os_printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), %union.acpi_operand_object* %106, i64 %108)
  br label %110

110:                                              ; preds = %105, %96
  br label %111

111:                                              ; preds = %110, %90
  %112 = load i32, i32* @AE_OK, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %85, %70, %32
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_os_printf(i8*, %union.acpi_operand_object*, ...) #1

declare dso_local i64 @acpi_ut_get_descriptor_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_valid_nameseg(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
