; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_ielement_to_ielement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utcopy.c_acpi_ut_copy_ielement_to_ielement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%union.acpi_generic_state = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %union.acpi_operand_object*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_8__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.acpi_operand_object*, %union.acpi_generic_state*, i8*)* @acpi_ut_copy_ielement_to_ielement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ut_copy_ielement_to_ielement(i32 %0, %union.acpi_operand_object* %1, %union.acpi_generic_state* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_generic_state*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %union.acpi_operand_object**, align 8
  %13 = alloca %union.acpi_operand_object*, align 8
  store i32 %0, i32* %6, align 4
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %7, align 8
  store %union.acpi_generic_state* %2, %union.acpi_generic_state** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i32, i32* @AE_OK, align 4
  store i32 %14, i32* %10, align 4
  %15 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %16 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %17 = bitcast %union.acpi_generic_state* %16 to %struct.TYPE_10__*
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %21 = bitcast %union.acpi_generic_state* %20 to %struct.TYPE_10__*
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = bitcast i32* %28 to %union.acpi_operand_object**
  store %union.acpi_operand_object** %29, %union.acpi_operand_object*** %12, align 8
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %82 [
    i32 128, label %31
    i32 129, label %58
  ]

31:                                               ; preds = %4
  %32 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %33 = icmp ne %union.acpi_operand_object* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_9__*
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %38)
  store %union.acpi_operand_object* %39, %union.acpi_operand_object** %13, align 8
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %41 = icmp ne %union.acpi_operand_object* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %43, i32* %5, align 4
  br label %90

44:                                               ; preds = %34
  %45 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %47 = call i32 @acpi_ut_copy_simple_object(%union.acpi_operand_object* %45, %union.acpi_operand_object* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @ACPI_FAILURE(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %86

52:                                               ; preds = %44
  %53 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %54 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %12, align 8
  store %union.acpi_operand_object* %53, %union.acpi_operand_object** %54, align 8
  br label %57

55:                                               ; preds = %31
  %56 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %12, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %56, align 8
  br label %57

57:                                               ; preds = %55, %52
  br label %84

58:                                               ; preds = %4
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %60 = bitcast %union.acpi_operand_object* %59 to %struct.TYPE_8__*
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %union.acpi_operand_object* @acpi_ut_create_package_object(i32 %62)
  store %union.acpi_operand_object* %63, %union.acpi_operand_object** %13, align 8
  %64 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %65 = icmp ne %union.acpi_operand_object* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %67, i32* %5, align 4
  br label %90

68:                                               ; preds = %58
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.TYPE_9__*
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %74 = bitcast %union.acpi_operand_object* %73 to %struct.TYPE_9__*
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %77 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %78 = bitcast %union.acpi_generic_state* %77 to %struct.TYPE_10__*
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  store %union.acpi_operand_object* %76, %union.acpi_operand_object** %79, align 8
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %81 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %12, align 8
  store %union.acpi_operand_object* %80, %union.acpi_operand_object** %81, align 8
  br label %84

82:                                               ; preds = %4
  %83 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %83, i32* %5, align 4
  br label %90

84:                                               ; preds = %68, %57
  %85 = load i32, i32* %10, align 4
  store i32 %85, i32* %5, align 4
  br label %90

86:                                               ; preds = %51
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %88 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %87)
  %89 = load i32, i32* %10, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %84, %82, %66, %42
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_ut_copy_simple_object(%union.acpi_operand_object*, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_package_object(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
