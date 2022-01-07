; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsinit.c_acpi_ds_init_one_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsinit.c_acpi_ds_init_one_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_init_walk_info = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.acpi_namespace_node = type { i64 }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"During Region initialization %p [%4.4s]\00", align 1
@ACPI_METHOD_SERIALIZED = common dso_local global i32 0, align 4
@acpi_gbl_auto_serialize_methods = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i8*, i8**)* @acpi_ds_init_one_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ds_init_one_object(i64 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_init_walk_info*, align 8
  %11 = alloca %struct.acpi_namespace_node*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.acpi_operand_object*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.acpi_init_walk_info*
  store %struct.acpi_init_walk_info* %15, %struct.acpi_init_walk_info** %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = inttoptr i64 %16 to %struct.acpi_namespace_node*
  store %struct.acpi_namespace_node* %17, %struct.acpi_namespace_node** %11, align 8
  %18 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %20 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %23 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @AE_OK, align 4
  store i32 %27, i32* %5, align 4
  br label %113

28:                                               ; preds = %4
  %29 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %30 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @acpi_ns_get_type(i64 %33)
  switch i32 %34, label %110 [
    i32 128, label %35
    i32 129, label %53
    i32 130, label %105
  ]

35:                                               ; preds = %28
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @acpi_ds_initialize_region(i64 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @ACPI_FAILURE(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load i32, i32* @AE_INFO, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @acpi_ut_get_node_name(i64 %45)
  %47 = call i32 @ACPI_EXCEPTION(i32 %46)
  br label %48

48:                                               ; preds = %41, %35
  %49 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %50 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %111

53:                                               ; preds = %28
  %54 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %55 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %59 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %58)
  store %union.acpi_operand_object* %59, %union.acpi_operand_object** %13, align 8
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %61 = icmp ne %union.acpi_operand_object* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %111

63:                                               ; preds = %53
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %65 = bitcast %union.acpi_operand_object* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ACPI_METHOD_SERIALIZED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %63
  %72 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %73 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  br label %111

76:                                               ; preds = %63
  %77 = load i32, i32* @acpi_gbl_auto_serialize_methods, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %76
  %80 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %11, align 8
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %82 = call i32 @acpi_ds_auto_serialize_method(%struct.acpi_namespace_node* %80, %union.acpi_operand_object* %81)
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %84 = bitcast %union.acpi_operand_object* %83 to %struct.TYPE_2__*
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ACPI_METHOD_SERIALIZED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %92 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %96 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %111

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %99, %76
  %101 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %102 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %111

105:                                              ; preds = %28
  %106 = load %struct.acpi_init_walk_info*, %struct.acpi_init_walk_info** %10, align 8
  %107 = getelementptr inbounds %struct.acpi_init_walk_info, %struct.acpi_init_walk_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %111

110:                                              ; preds = %28
  br label %111

111:                                              ; preds = %110, %105, %100, %90, %71, %62, %48
  %112 = load i32, i32* @AE_OK, align 4
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %111, %26
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @acpi_ns_get_type(i64) #1

declare dso_local i32 @acpi_ds_initialize_region(i64) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ds_auto_serialize_method(%struct.acpi_namespace_node*, %union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
