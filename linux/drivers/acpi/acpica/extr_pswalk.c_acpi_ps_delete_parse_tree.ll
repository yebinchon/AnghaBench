; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_pswalk.c_acpi_ps_delete_parse_tree.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_pswalk.c_acpi_ps_delete_parse_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %union.acpi_parse_object*, %union.acpi_parse_object*, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ps_delete_parse_tree = common dso_local global i32 0, align 4
@ACPI_DB_PARSE_TREES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c" root %p\0A\00", align 1
@ACPI_LV_PARSE_TREES = common dso_local global i32 0, align 4
@_COMPONENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"      %*.s%s %p\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@AML_INT_NAMEPATH_OP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"  %4.4s\00", align 1
@AML_STRING_OP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ps_delete_parse_tree(%union.acpi_parse_object* %0) #0 {
  %2 = alloca %union.acpi_parse_object*, align 8
  %3 = alloca %union.acpi_parse_object*, align 8
  %4 = alloca %union.acpi_parse_object*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca i32, align 4
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %2, align 8
  %7 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  store %union.acpi_parse_object* %7, %union.acpi_parse_object** %3, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %4, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @ps_delete_parse_tree, align 4
  %9 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %10 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %8, %union.acpi_parse_object* %9)
  %11 = load i32, i32* @ACPI_DB_PARSE_TREES, align 4
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %13 = ptrtoint %union.acpi_parse_object* %12 to i32
  %14 = call i32 @ACPI_DEBUG_PRINT(i32 %13)
  br label %15

15:                                               ; preds = %101, %71, %1
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %17 = icmp ne %union.acpi_parse_object* %16, null
  br i1 %17, label %18, label %102

18:                                               ; preds = %15
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %21 = icmp ne %union.acpi_parse_object* %19, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %18
  %23 = load i32, i32* @ACPI_LV_PARSE_TREES, align 4
  %24 = load i32, i32* @_COMPONENT, align 4
  %25 = call i64 @ACPI_IS_DEBUG_ENABLED(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 4
  %30 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %31 = bitcast %union.acpi_parse_object* %30 to %struct.TYPE_6__*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @acpi_ps_get_opcode_name(i32 %33)
  %35 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %36 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %34, %union.acpi_parse_object* %35)
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %38 = bitcast %union.acpi_parse_object* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AML_INT_NAMEPATH_OP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %27
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %45 = bitcast %union.acpi_parse_object* %44 to %struct.TYPE_6__*
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %43, %27
  %51 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %52 = bitcast %union.acpi_parse_object* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AML_STRING_OP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %59 = bitcast %union.acpi_parse_object* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %57, %50
  %65 = call i32 (i8*, ...) @acpi_os_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %22
  %67 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %68 = call %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object* %67, i32 0)
  store %union.acpi_parse_object* %68, %union.acpi_parse_object** %4, align 8
  %69 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %70 = icmp ne %union.acpi_parse_object* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  store %union.acpi_parse_object* %72, %union.acpi_parse_object** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %15

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %18
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %78 = bitcast %union.acpi_parse_object* %77 to %struct.TYPE_6__*
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load %union.acpi_parse_object*, %union.acpi_parse_object** %79, align 8
  store %union.acpi_parse_object* %80, %union.acpi_parse_object** %4, align 8
  %81 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %82 = bitcast %union.acpi_parse_object* %81 to %struct.TYPE_6__*
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %83, align 8
  store %union.acpi_parse_object* %84, %union.acpi_parse_object** %5, align 8
  %85 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %86 = call i32 @acpi_ps_free_op(%union.acpi_parse_object* %85)
  %87 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %88 = load %union.acpi_parse_object*, %union.acpi_parse_object** %2, align 8
  %89 = icmp eq %union.acpi_parse_object* %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %76
  %91 = load i32, i32* @return_VOID, align 4
  br label %92

92:                                               ; preds = %90, %76
  %93 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  %94 = icmp ne %union.acpi_parse_object* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load %union.acpi_parse_object*, %union.acpi_parse_object** %4, align 8
  store %union.acpi_parse_object* %96, %union.acpi_parse_object** %3, align 8
  br label %101

97:                                               ; preds = %92
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %6, align 4
  %100 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  store %union.acpi_parse_object* %100, %union.acpi_parse_object** %3, align 8
  br label %101

101:                                              ; preds = %97, %95
  br label %15

102:                                              ; preds = %15
  %103 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @ACPI_IS_DEBUG_ENABLED(i32, i32) #1

declare dso_local i32 @acpi_os_printf(i8*, ...) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_get_arg(%union.acpi_parse_object*, i32) #1

declare dso_local i32 @acpi_ps_free_op(%union.acpi_parse_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
