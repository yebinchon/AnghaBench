; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_detach_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsobject.c_acpi_ns_detach_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32, i32, %union.acpi_operand_object* }
%union.acpi_operand_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %union.acpi_operand_object* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@ns_detach_object = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_DATA = common dso_local global i64 0, align 8
@return_VOID = common dso_local global i32 0, align 4
@ANOBJ_ALLOCATED_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@ACPI_TYPE_REGION = common dso_local global i64 0, align 8
@ACPI_DESC_TYPE_OPERAND = common dso_local global i64 0, align 8
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_DB_NAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Node %p [%4.4s] Object %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ns_detach_object(%struct.acpi_namespace_node* %0) #0 {
  %2 = alloca %struct.acpi_namespace_node*, align 8
  %3 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %2, align 8
  %4 = load i32, i32* @ns_detach_object, align 4
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 %4)
  %6 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %6, i32 0, i32 2
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  store %union.acpi_operand_object* %8, %union.acpi_operand_object** %3, align 8
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %10 = icmp ne %union.acpi_operand_object* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %13 = bitcast %union.acpi_operand_object* %12 to %struct.TYPE_6__*
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @return_VOID, align 4
  br label %20

20:                                               ; preds = %18, %11
  %21 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ANOBJ_ALLOCATED_BUFFER, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %29 = bitcast %union.acpi_operand_object* %28 to %struct.TYPE_6__*
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ACPI_FREE(i32 %38)
  br label %40

40:                                               ; preds = %34, %27
  br label %41

41:                                               ; preds = %40, %20
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_6__*
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ACPI_TYPE_REGION, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %50 = bitcast %union.acpi_operand_object* %49 to %struct.TYPE_5__*
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %54 = call i32 @acpi_ut_remove_address_range(i32 %52, %struct.acpi_namespace_node* %53)
  br label %55

55:                                               ; preds = %48, %41
  %56 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %57 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %56, i32 0, i32 2
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %57, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %59 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %58)
  %60 = load i64, i64* @ACPI_DESC_TYPE_OPERAND, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %112

62:                                               ; preds = %55
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %64 = bitcast %union.acpi_operand_object* %63 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %65, align 8
  %67 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %68 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %67, i32 0, i32 2
  store %union.acpi_operand_object* %66, %union.acpi_operand_object** %68, align 8
  %69 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %70 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %69, i32 0, i32 2
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %70, align 8
  %72 = icmp ne %union.acpi_operand_object* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %62
  %74 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %75 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %74, i32 0, i32 2
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %75, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_6__*
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %73
  %83 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %84 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %83, i32 0, i32 2
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %84, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_6__*
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %union.acpi_operand_object*, %union.acpi_operand_object** %87, align 8
  %89 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %90 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %89, i32 0, i32 2
  store %union.acpi_operand_object* %88, %union.acpi_operand_object** %90, align 8
  br label %91

91:                                               ; preds = %82, %73, %62
  %92 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %93 = bitcast %union.acpi_operand_object* %92 to %struct.TYPE_6__*
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %94, align 8
  %96 = icmp ne %union.acpi_operand_object* %95, null
  br i1 %96, label %97, label %111

97:                                               ; preds = %91
  %98 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %99 = bitcast %union.acpi_operand_object* %98 to %struct.TYPE_6__*
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %100, align 8
  %102 = bitcast %union.acpi_operand_object* %101 to %struct.TYPE_6__*
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @ACPI_TYPE_LOCAL_DATA, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %97
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %109 = bitcast %union.acpi_operand_object* %108 to %struct.TYPE_6__*
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %110, align 8
  br label %111

111:                                              ; preds = %107, %97, %91
  br label %112

112:                                              ; preds = %111, %55
  %113 = load i32, i32* @ACPI_TYPE_ANY, align 4
  %114 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %115 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @ACPI_DB_NAMES, align 4
  %117 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %118 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %2, align 8
  %119 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %118)
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %121 = ptrtoint %union.acpi_operand_object* %120 to i32
  %122 = call i32 @ACPI_DEBUG_PRINT(i32 %121)
  %123 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %124 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %123)
  %125 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_FREE(i32) #1

declare dso_local i32 @acpi_ut_remove_address_range(i32, %struct.acpi_namespace_node*) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
