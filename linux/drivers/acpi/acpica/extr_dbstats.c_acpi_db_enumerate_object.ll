; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbstats.c_acpi_db_enumerate_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbstats.c_acpi_db_enumerate_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %union.acpi_operand_object*, %union.acpi_operand_object** }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_10__ = type { %union.acpi_operand_object*, %union.acpi_operand_object** }
%struct.TYPE_11__ = type { %union.acpi_operand_object* }
%struct.TYPE_12__ = type { %union.acpi_operand_object** }
%struct.TYPE_13__ = type { %union.acpi_operand_object*, %union.acpi_operand_object** }

@acpi_gbl_num_objects = common dso_local global i32 0, align 4
@ACPI_TYPE_NS_NODE_MAX = common dso_local global i64 0, align 8
@acpi_gbl_obj_type_count_misc = common dso_local global i32 0, align 4
@acpi_gbl_obj_type_count = common dso_local global i32* null, align 8
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.acpi_operand_object*)* @acpi_db_enumerate_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_db_enumerate_object(%union.acpi_operand_object* %0) #0 {
  %2 = alloca %union.acpi_operand_object*, align 8
  %3 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %2, align 8
  %4 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %5 = icmp ne %union.acpi_operand_object* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %138

7:                                                ; preds = %1
  %8 = load i32, i32* @acpi_gbl_num_objects, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @acpi_gbl_num_objects, align 4
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %11 = bitcast %union.acpi_operand_object* %10 to %struct.TYPE_8__*
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ACPI_TYPE_NS_NODE_MAX, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load i32, i32* @acpi_gbl_obj_type_count_misc, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @acpi_gbl_obj_type_count_misc, align 4
  br label %28

19:                                               ; preds = %7
  %20 = load i32*, i32** @acpi_gbl_obj_type_count, align 8
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %22 = bitcast %union.acpi_operand_object* %21 to %struct.TYPE_8__*
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_8__*
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  switch i64 %32, label %137 [
    i64 132, label %33
    i64 133, label %53
    i64 134, label %70
    i64 129, label %80
    i64 131, label %90
    i64 130, label %103
    i64 128, label %120
  ]

33:                                               ; preds = %28
  store i64 0, i64* %3, align 8
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i64, i64* %3, align 8
  %36 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %37 = bitcast %union.acpi_operand_object* %36 to %struct.TYPE_9__*
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %34
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_9__*
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %45, i64 %46
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %47, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %48)
  br label %49

49:                                               ; preds = %41
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %3, align 8
  br label %34

52:                                               ; preds = %34
  br label %138

53:                                               ; preds = %28
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_10__*
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %56, align 8
  %58 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %57, i64 0
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %58, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %59)
  %60 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %61 = bitcast %union.acpi_operand_object* %60 to %struct.TYPE_10__*
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %62, align 8
  %64 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %63, i64 1
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %64, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %65)
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %67 = bitcast %union.acpi_operand_object* %66 to %struct.TYPE_10__*
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %68, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %69)
  br label %138

70:                                               ; preds = %28
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %72 = call i32 @acpi_ns_get_secondary_object(%union.acpi_operand_object* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i32*, i32** @acpi_gbl_obj_type_count, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 134
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %74, %70
  br label %138

80:                                               ; preds = %28
  %81 = load i32*, i32** @acpi_gbl_obj_type_count, align 8
  %82 = load i64, i64* @ACPI_TYPE_LOCAL_REGION_FIELD, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %87 = bitcast %union.acpi_operand_object* %86 to %struct.TYPE_11__*
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %88, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %89)
  br label %138

90:                                               ; preds = %28
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %92 = bitcast %union.acpi_operand_object* %91 to %struct.TYPE_12__*
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %93, align 8
  %95 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %94, i64 0
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %95, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %96)
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %98 = bitcast %union.acpi_operand_object* %97 to %struct.TYPE_12__*
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %99, align 8
  %101 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %100, i64 1
  %102 = load %union.acpi_operand_object*, %union.acpi_operand_object** %101, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %102)
  br label %138

103:                                              ; preds = %28
  %104 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %105 = bitcast %union.acpi_operand_object* %104 to %struct.TYPE_13__*
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %106, align 8
  %108 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %107, i64 0
  %109 = load %union.acpi_operand_object*, %union.acpi_operand_object** %108, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %109)
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %111 = bitcast %union.acpi_operand_object* %110 to %struct.TYPE_13__*
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %112, align 8
  %114 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %113, i64 1
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %114, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %115)
  %116 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %117 = bitcast %union.acpi_operand_object* %116 to %struct.TYPE_13__*
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load %union.acpi_operand_object*, %union.acpi_operand_object** %118, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %119)
  br label %138

120:                                              ; preds = %28
  %121 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %122 = bitcast %union.acpi_operand_object* %121 to %struct.TYPE_14__*
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %123, align 8
  %125 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %124, i64 0
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %125, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %126)
  %127 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %128 = bitcast %union.acpi_operand_object* %127 to %struct.TYPE_14__*
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %129, align 8
  %131 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %130, i64 1
  %132 = load %union.acpi_operand_object*, %union.acpi_operand_object** %131, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %132)
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %2, align 8
  %134 = bitcast %union.acpi_operand_object* %133 to %struct.TYPE_14__*
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load %union.acpi_operand_object*, %union.acpi_operand_object** %135, align 8
  call void @acpi_db_enumerate_object(%union.acpi_operand_object* %136)
  br label %138

137:                                              ; preds = %28
  br label %138

138:                                              ; preds = %6, %137, %120, %103, %90, %80, %79, %53, %52
  ret void
}

declare dso_local i32 @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
