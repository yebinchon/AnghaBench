; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbmethod.c_acpi_db_set_method_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbmethod.c_acpi_db_set_method_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %union.acpi_operand_object* }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { %union.acpi_operand_object* }
%struct.acpi_namespace_node = type { i64, %union.acpi_operand_object* }

@.str = private unnamed_addr constant [25 x i8] c"Invalid SET operand: %s\0A\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Can only set Integer nodes\0A\00", align 1
@acpi_gbl_current_walk_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"There is no method currently executing\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Could not create an internal object\0A\00", align 1
@ACPI_METHOD_MAX_ARG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Arg%u - Invalid argument name\0A\00", align 1
@ACPI_REFCLASS_ARG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"Arg%u: \00", align 1
@ACPI_METHOD_MAX_LOCAL = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"Local%u - Invalid local variable name\0A\00", align 1
@ACPI_REFCLASS_LOCAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"Local%u: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_db_set_method_data(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.acpi_walk_state*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.acpi_namespace_node*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @acpi_ut_strupr(i8* %14)
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %7, align 1
  %19 = load i8, i8* %7, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 76
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i8, i8* %7, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 65
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load i8, i8* %7, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 78
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %31)
  br label %146

33:                                               ; preds = %26, %22, %3
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strtoul(i8* %34, i32* null, i32 16)
  store i64 %35, i64* %9, align 8
  %36 = load i8, i8* %7, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 78
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  %40 = load i8*, i8** %5, align 8
  %41 = call %struct.acpi_namespace_node* @acpi_db_convert_to_node(i8* %40)
  store %struct.acpi_namespace_node* %41, %struct.acpi_namespace_node** %13, align 8
  %42 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %43 = icmp ne %struct.acpi_namespace_node* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %146

45:                                               ; preds = %39
  %46 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %47 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %146

53:                                               ; preds = %45
  %54 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %13, align 8
  %55 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %54, i32 0, i32 1
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %55, align 8
  store %union.acpi_operand_object* %56, %union.acpi_operand_object** %11, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %59 = bitcast %union.acpi_operand_object* %58 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  br label %146

61:                                               ; preds = %33
  %62 = load i8*, i8** %5, align 8
  %63 = call i64 @strtoul(i8* %62, i32* null, i32 16)
  store i64 %63, i64* %8, align 8
  %64 = load i32, i32* @acpi_gbl_current_walk_list, align 4
  %65 = call %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(i32 %64)
  store %struct.acpi_walk_state* %65, %struct.acpi_walk_state** %10, align 8
  %66 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %67 = icmp ne %struct.acpi_walk_state* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %146

70:                                               ; preds = %61
  %71 = load i64, i64* %9, align 8
  %72 = trunc i64 %71 to i32
  %73 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i32 %72)
  store %union.acpi_operand_object* %73, %union.acpi_operand_object** %11, align 8
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %75 = icmp ne %union.acpi_operand_object* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %70
  %77 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %146

78:                                               ; preds = %70
  %79 = load i8, i8* %7, align 1
  %80 = sext i8 %79 to i32
  switch i32 %80, label %141 [
    i32 65, label %81
    i32 76, label %111
  ]

81:                                               ; preds = %78
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* @ACPI_METHOD_MAX_ARG, align 8
  %84 = icmp ugt i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i64, i64* %8, align 8
  %87 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %86)
  br label %143

88:                                               ; preds = %81
  %89 = load i32, i32* @ACPI_REFCLASS_ARG, align 4
  %90 = load i64, i64* %8, align 8
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %92 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %93 = call i32 @acpi_ds_store_object_to_local(i32 %89, i64 %90, %union.acpi_operand_object* %91, %struct.acpi_walk_state* %92)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @ACPI_FAILURE(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %143

98:                                               ; preds = %88
  %99 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %100 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %99, i32 0, i32 1
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load %union.acpi_operand_object*, %union.acpi_operand_object** %104, align 8
  store %union.acpi_operand_object* %105, %union.acpi_operand_object** %11, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %106)
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %109 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %110 = call i32 @acpi_db_display_internal_object(%union.acpi_operand_object* %108, %struct.acpi_walk_state* %109)
  br label %142

111:                                              ; preds = %78
  %112 = load i64, i64* %8, align 8
  %113 = load i64, i64* @ACPI_METHOD_MAX_LOCAL, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load i64, i64* %8, align 8
  %117 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i64 %116)
  br label %143

118:                                              ; preds = %111
  %119 = load i32, i32* @ACPI_REFCLASS_LOCAL, align 4
  %120 = load i64, i64* %8, align 8
  %121 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %122 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %123 = call i32 @acpi_ds_store_object_to_local(i32 %119, i64 %120, %union.acpi_operand_object* %121, %struct.acpi_walk_state* %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @ACPI_FAILURE(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %118
  br label %143

128:                                              ; preds = %118
  %129 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %130 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %134, align 8
  store %union.acpi_operand_object* %135, %union.acpi_operand_object** %11, align 8
  %136 = load i64, i64* %8, align 8
  %137 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %136)
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %139 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %10, align 8
  %140 = call i32 @acpi_db_display_internal_object(%union.acpi_operand_object* %138, %struct.acpi_walk_state* %139)
  br label %142

141:                                              ; preds = %78
  br label %142

142:                                              ; preds = %141, %128, %98
  br label %143

143:                                              ; preds = %142, %127, %115, %97, %85
  %144 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %145 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %144)
  br label %146

146:                                              ; preds = %143, %76, %68, %53, %51, %44, %30
  ret void
}

declare dso_local i32 @acpi_ut_strupr(i8*) #1

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local %struct.acpi_namespace_node* @acpi_db_convert_to_node(i8*) #1

declare dso_local %struct.acpi_walk_state* @acpi_ds_get_current_walk_state(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i32) #1

declare dso_local i32 @acpi_ds_store_object_to_local(i32, i64, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_db_display_internal_object(%union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
